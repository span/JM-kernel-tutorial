# Makefile for JamesM's kernel tutorials.
# The C and C++ rules are already setup by default.
# The only one that needs changing is the assembler 
# rule, as we use nasm instead of GNU as.

SOURCES=boot.o

CFLAGS=
LDFLAGS=-Tlink.ld
ASFLAGS=-felf

all: $(SOURCES) link 

clean:
 » 	-rm *.o kernel

link:
 » 	ld $(LDFLAGS) -o kernel $(SOURCES)

.s.o:
 » 	nasm $(ASFLAGS) $<
