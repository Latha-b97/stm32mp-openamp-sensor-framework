#include <iostream>
#include <string>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>

#define SERVER_IP "192.168.0.103" // Replace with STM32MP IP
#define PORT 9000 // should be same as SERVER_PORT in server.cpp      

int main() {
    int sock = socket(AF_INET, SOCK_STREAM, 0);
    if (sock < 0) {
        std::cerr << "Socket creation failed\n";
        return 1;
    }

    struct sockaddr_in server_addr{};
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(PORT);

    if (inet_pton(AF_INET, SERVER_IP, &server_addr.sin_addr) <= 0) {
        std::cerr << "Invalid address\n";
        return 1;
    }

    if (connect(sock, (struct sockaddr*)&server_addr, sizeof(server_addr)) < 0) {
        std::cerr << "Connection failed\n";
        return 1;
    }

    std::cout << "Connected to server!\n";

    char buffer[1024];
    while (true) {
        int n = read(sock, buffer, sizeof(buffer)-1);
        if (n <= 0) break;

        buffer[n] = '\0';
        std::string data(buffer);
        std::cout << "Received: " << data;
    }

    close(sock);
    return 0;
}
