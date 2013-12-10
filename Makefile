FS  = /usr/local/freeswitch
INC = -I$(FS)/include
LIB = -L$(FS)/lib

all: myswitch

myswitch: myswitch.c
	gcc -o myswitch -ggdb $(INC) $(LIB) -lfreeswitch myswitch.c

clean:
	rm -rf myswitch myswitch.so myswitch.dSYM
