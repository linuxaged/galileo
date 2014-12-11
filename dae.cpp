#include <iostream>
#include <fstream>
#include <string>

int main(void)
{
	std::ifstream ifs("example/models/Badblue_fly.dae");

	std::string content((std::istreambuf_iterator<char>(ifs) ),
						(std::istreambuf_iterator<char>()    ) );
	std::cout<<content<<std::endl;
	return 0;
}
