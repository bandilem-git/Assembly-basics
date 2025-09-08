TARGET    = basicIf.asm
OUT       = $(TARGET:.asm=)
OBJ       = $(TARGET:.asm=.o)

YASM      = yasm
YASMFLAGS = -f elf64 -g dwarf2
LD        = ld

.PHONY: all clean run debug

all: $(OUT)

$(OUT): $(OBJ)
	$(LD) $(OBJ) -o $(OUT)

$(OBJ): $(TARGET)
	$(YASM) $(YASMFLAGS) $< -o $@

run: $(OUT)
	./$(OUT)

debug: $(OUT)
	gdb ./$(OUT) -ex "break _start" -ex "run"

clean:
	rm -f $(OBJ) $(OUT)
