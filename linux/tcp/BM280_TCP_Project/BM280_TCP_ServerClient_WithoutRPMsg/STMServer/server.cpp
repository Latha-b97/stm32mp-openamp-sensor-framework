#include <iostream>
#include <string>
#include <thread>
#include <chrono>
#include <cstring>
#include <unistd.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/i2c-dev.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>

// I2C and TCP constants
#define I2C_DEV "/dev/i2c-0"
#define BME280_ADDR 0x76
#define SERVER_PORT 9000

// Registers
#define REG_TEMP_MSB 0xFA
#define REG_PRESS_MSB 0xF7
#define REG_HUM_MSB 0xFD
#define REG_CTRL_HUM 0xF2
#define REG_CTRL_MEAS 0xF4
#define REG_CONFIG 0xF5

//#define PORT 5000

// Utility to read registers
int i2c_read(int fd, uint8_t reg, uint8_t *buf, size_t len) 
{
    if (write(fd, &reg, 1) != 1) 
            return -1;
    if (read(fd, buf, len) != (ssize_t)len) 
            return -1;
    return 0;
}

// Initialize BME280 minimal setup
bool bme280_init(int fd) 
{
    uint8_t ctrl_hum[2] = {REG_CTRL_HUM, 0x01};   // Humidity oversampling x1
    uint8_t ctrl_meas[2] = {REG_CTRL_MEAS, 0x27}; // Temp/press oversampling x1, mode normal
    uint8_t config[2] = {REG_CONFIG, 0xA0};       // Standby time 1000ms
    
    if (write(fd, ctrl_hum, 2) != 2) 
        return false;
    if (write(fd, ctrl_meas, 2) != 2) 
        return false;
    if (write(fd, config, 2) != 2)
        return false;
    return true;
}

// Read raw uncompensated data
bool bme280_read_raw(int fd, float &temp, float &press, float &hum)
{
    uint8_t data[8];

    if (i2c_read(fd, 0xF7, data, 8) < 0)
        return false;

    int32_t adc_P = (data[0] << 12) | (data[1] << 4) | (data[2] >> 4);
    int32_t adc_T = (data[3] << 12) | (data[4] << 4) | (data[5] >> 4);
    int32_t adc_H = (data[6] << 8) | data[7];

    // NOTE: Simplified — not using calibration coefficients
    // You can replace this with proper compensation later
    temp = adc_T / 16384.0f;
    press = adc_P / 2048.0f;
    hum = adc_H / 1024.0f;

    return true;
}

int main() 
{
    // --- Setup I2C ---
    int i2c_fd = open(I2C_DEV, O_RDWR);
    if (i2c_fd < 0) {
        std::cerr << "Failed to open I2C device\n";
        return 1;
    }   
    if (ioctl(i2c_fd, I2C_SLAVE, BME280_ADDR) < 0) {
        std::cerr << "Failed to set I2C address\n";
        close(i2c_fd);
        return 1;
    }
    if (!bme280_init(i2c_fd)) {
        std::cerr << "Failed to initialize BME280\n";
        close(i2c_fd);
        return 1;
    } 
    
    std::cout << "BME280 initialized on " << I2C_DEV << " addr 0x"
              << std::hex << BME280_ADDR << std::dec << std::endl;


    // --- Setup TCP Server ---
     
    int server_fd, client_fd;
    struct sockaddr_in server_addr {};
    
    // --- Create socket ---
    server_fd = socket(AF_INET, SOCK_STREAM, 0);
    if (server_fd < 0) {
        std::cerr << "Socket creation failed\n";
        return 1;
    }

    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = INADDR_ANY;
    server_addr.sin_port = htons(SERVER_PORT);

    // --- Bind ---
    if (bind(server_fd, (struct sockaddr*)&server_addr, sizeof(server_addr)) < 0) 
    {
        std::cerr << "Bind failed\n";
        return 1;
    }

    // --- Listen ---
    if (listen(server_fd, 1) < 0) 
    {
        std::cerr << "Listen failed\n";
        return 1;
    }

    std::cout << "Server listening on port " << SERVER_PORT << "...\n";

    // --- Accept ---
    struct sockaddr_in client_addr{};
      socklen_t client_len = sizeof(client_addr);
    client_fd = accept(server_fd, (struct sockaddr*)&client_addr, &client_len);
    if (client_fd < 0) 
    {
        std::cerr << "Accept failed\n";
        return 1;
    }
    std::cout << "Client connected!\n";

    // --- Send dummy sensor data every 2 seconds ---
    //float temp = 25.0f;
    //float pressure = 1013.25f;
    //float humidity = 50.0f;

    // use real data from BME280
    auto temp = 0.0f;
    auto pressure = 0.0f;
    auto humidity = 0.0f;

    while (true)
    {
        // You can replace this with real BME280 I2C readings later
        temp += 0.1f;
        humidity += 0.2f;
        if (bme280_read_raw(i2c_fd, temp, pressure, humidity) == false) 
        {
            std::cerr << "Failed to read from BME280\n";
            break;
        }
        else
        {
            std::cout << "Read from BME280 - Temp: " << temp 
                      << " C, Pressure: " << pressure 
                      << " hPa, Humidity: " << humidity << " %\n";
        
            std::string message = std::to_string(temp) + "," +
                                std::to_string(pressure) + "," +
                                std::to_string(humidity) + "\n";

            send(client_fd, message.c_str(), message.length(), 0);

            std::cout << "Sent: " << message;
        }
        std::this_thread::sleep_for(std::chrono::seconds(2));
    }

    close(client_fd);
    close(server_fd);
    close(i2c_fd);
    return 0;
}
