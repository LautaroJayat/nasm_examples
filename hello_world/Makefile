AS=nasm #Assembly compiler
ASFLAGS=-f elf32 #Assembly flags

LD=ld #Linker
LDFLAGS=-m elf_i386 -o $(EXECUTABLE)

EXECUTABLE=$(OBJECTS:.o=.bin)
OBJECTS=$(SOURCES:.asm=.o)
SOURCES=$(wildcard ./*.asm)


build: $(OBJECTS)
	$(LD) $(LDFLAGS) $(OBJECTS) 

$(OBJECTS): $(SOURCES)
	$(AS) $(ASFLAGS) $(SOURCES)


clean:
	rm -rf *.o *.bin

.PHONY: \
		clean \
		build \
