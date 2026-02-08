AS=nasm
ASFLAGS=-f elf64 -g
LD=ld
LDFLAGS=
SORUCES=$(wildcard *.asm)
OBJECTS=$(SORUCES:.asm=.o)
EXECUTABLE=app

#Check version
all: 
	+$(MAKE) $(SORUCES) $(EXECUTABLE)

#Create executable
$(EXECUTABLE):$(OBJECTS)
	$(LD) $(LDFLAGS) $(OBJECTS) -o $@

#Compile assembly program
$(OBJECTS):$(SORUCES)
	$(AS) $(ASFLAGS) $(SORUCES)

#Clean folder
clean:
	-rm -rf *o $(EXECUTABLE)
