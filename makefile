SHELL:=/bin/bash

default: P3 P2 P1 compile

P1: main.c database.c
	gcc -c main.c database.c
	if [ ! -f "menu.o"] ; then \ 
		gcc -c menu.c
	fi
P2: menu.c divide+conquer.c
	gcc -c menu.c divide+conquer.c 
	if [ [ ! -f "fact.o" ] && [ ! -f "fib.o" ] && [ ! -f csv.o ] && [ ! -x library. o] ] ; then \ 
		gcc -c fact.c fib.c csv.c library.c 
	fi
P3: fact.c fib.c csv.c library.c 
	gcc -c fact.c fib.c csv.c library.c
compile: 
	if [ [ -f "fact.o" ] && [ -f "fib.o" ] && [ -f csv.o ] && [ -x library. o] ] ; then \ 
		gcc main.o menu.o database.o divide+conquer.o fact.o fib.o csv.o library.o
	fi
backup: 
	if [ ! -d mybackup] ; then \
		mkdir mybackup
	fi
	chmod 755 mybackup
	cp main.c database.c menu.c divide+conquer.c /mybackup
	cp database.h menu.h divide+conquer.h /mybackup
	cp fact.c fib.c csv.c library.c /mybackup
	cp fact.h fib.h csv.h library.h /mybackup 
clean: 
	rm main.o database.o menu.o 
	rm divide+conquer.o fact.o fib.o 
	rm scv.o library.o
