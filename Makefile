debug : DEBUG=-g -pg
debug : DEFINES=-DDEBUG


#LIBS=-lrt
CFLAGS=-Wall

OS := $(shell uname)
ifeq ($(OS), Darwin)
		CC = gcc
endif

CFLAGS+=$(DEBUG) ${PROFILE} $(DEFINES) $(LIBS) 

katz: katz.c katz.h
	$(CC) $(CFLAGS) -o katz katz.c

debug: katz

clean:
	rm katz
