AS=nasm #Assembly compiler
ASFLAGS=-f elf64 #Assembly flags
LD=ld #Linker
GCC= gcc
GCCFLAGS= -o $(EXECUTABLE)
OBJECTS=$(SOURCES:.asm=.o)
EXECUTABLE=$(OBJECTS:.o=.bin)
SOURCES=$(wildcard ./*.asm)


build: $(OBJECTS)
	$(GCC) $(OBJECTS) $(GCCFLAGS) 

$(OBJECTS): $(SOURCES)
	$(AS) $(ASFLAGS) $(SOURCES)


clean:
	rm -rf *.o *.bin

.PHONY: \
		clean \
		build \
