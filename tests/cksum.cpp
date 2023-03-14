#include <cstdio>
#include <string>
#include <cstdint>

#include <fstream>
#include <iterator>
#include <vector>

int main() {

    std::ifstream input("abuse-data.tar", std::ios::binary);

    std::vector<char> bytes(
         (std::istreambuf_iterator<char>(input)),
         (std::istreambuf_iterator<char>()));

    uint8_t checksum = 0;
    for(auto& it : bytes) {
        checksum ^= it;
    }

    printf("Data checksum: %02X\n", checksum);

    input.close();
}


