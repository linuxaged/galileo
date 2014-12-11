UNAME := $(shell uname)
ifeq ($(UNAME), Linux)
flags = -std=c++1y -stdlib=libstdc++ -Weverything -Werror -pedantic -DDEBUG
endif
ifeq ($(UNAME), Darwin)
flags = -std=c++1y -stdlib=libc++ -Weverything -Werror -pedantic -DDEBUG
endif

dae: dae.cpp
	clang++ ${flags} dae.cpp -o dae

clean:
	rm -f dae