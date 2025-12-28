#include <iostream>
#include <string>
#include <thread>
#include <chrono>
#include <cstring>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>

#define PORT 5000

int main() {
    int server_fd, client_fd;
    struct sockaddr_in server_addr, client_addr;
    socklen_t client_len = sizeof(client_addr);

    // --- Create socket ---
    server_fd = socket(AF_INET, SOCK_STREAM, 0);
    if (server_fd < 0) {
        std::cerr << "Socket creation failed\n";
        return 1;
    }

    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = INADDR_ANY;
    server_addr.sin_port = htons(PORT);

    // --- Bind ---
    if (bind(server_fd, (struct sockaddr*)&server_addr, sizeof(server_addr)) < 0) {
        std::cerr << "Bind failed\n";
        return 1;
    }

    // --- Listen ---
    if (listen(server_fd, 1) < 0) {
        std::cerr << "Listen failed\n";
        return 1;
    }

    std::cout << "Server listening on port " << PORT << "...\n";

    // --- Accept ---
    client_fd = accept(server_fd, (struct sockaddr*)&client_addr, &client_len);
    if (client_fd < 0) {
        std::cerr << "Accept failed\n";
        return 1;
    }
    std::cout << "Client connected!\n";

    // --- Send dummy sensor data every 2 seconds ---
    float temp = 25.0f;
    float pressure = 1013.25f;
    float humidity = 50.0f;

    while (true) {
        // You can replace this with real BME280 I2C readings later
        temp += 0.1f;
        humidity += 0.2f;

        std::string message = std::to_string(temp) + "," +
                              std::to_string(pressure) + "," +
                              std::to_string(humidity) + "\n";

        send(client_fd, message.c_str(), message.length(), 0);

        std::cout << "Sent: " << message;
        std::this_thread::sleep_for(std::chrono::seconds(2));
    }

    close(client_fd);
    close(server_fd);
    return 0;
}
