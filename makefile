#
# Make file for Lab 2 - ICS 53
#

C = gcc
CFLAGS = -I.
DEPS =  mm.h memlib.h
OBJ = mm.o memlib.o

%.o: %.c $(DEPS)
	$(CC) -g -c -Wall -o $@ $< $(CFLAGS)

mm: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)

clean:	
	rm -f mm *.o
