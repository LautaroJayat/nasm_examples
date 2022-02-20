AS=nasm #Assembly compiler
ASFLAGS=-f elf -g #Assembly flags
LD=ld #Linker
LDFLAGS=-m elf_i386 #Linker flags
SOURCES=$(wildcard ./src/*.c) #Sources
OBJECTS=$(SOURCES:.asm=.o) #Object files
EXECUTABLE=test #Program name

#Check version
all: $(SOURCES) $(EXECUTABLE)

#Create executable
$(EXECUTABLE): $(OBJECTS) 
	$(LD) $(LDFLAGS) $(OBJECTS) -o $@

#Compile assembly program
$(OBJECTS): $(SOURCES)
	$(AS) $(ASFLAGS) $(SOURCES)
 
#Clean folder
clean:
	rm -rf ./**/*.o ./**/*.bin