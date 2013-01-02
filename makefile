all : lisp.exe glov.exe tags

#-W -Wall -Wno-format -Wno-write-strings

lisp.exe : lisp.cpp
	$(CXX) -W -Wall -O2 -ggdb -std=c++11 -o $@ $<

glov.exe: lisp.c
	$(CXX) -Wno-write-strings -O2 -ggdb -std=c++11 -o $@ $<

tags: lisp.cpp
	ctags $<
