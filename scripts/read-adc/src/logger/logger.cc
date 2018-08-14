#include "ads1118.hh"
#include <fstream>
#include <iostream>
#include <ctime>
#include <locale>
#include <thread>
#include <cerrno>

int main() {
    ads1118<> adc(0);
    std::ofstream f("log.txt");

    for(;;) {
	using namespace std::chrono_literals;
	float v = adc.in_V(4);
	std::time_t now = std::time(nullptr);
	char ts[80];
	std::strftime(ts, sizeof(ts), "%Y-%m-%d %H:%M:%S", std::localtime(&now));
	f << ts << " " << v << std::endl;
	std::cout << ts << " " << v << std::endl;
	f.flush();
	std::this_thread::sleep_for(300s);
    }
};
