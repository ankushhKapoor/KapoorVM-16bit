flags = -O2 -Wall -std=c2x
ldflags = -lbu

SRC_DIR = src
INC_DIR = include

SRC = $(SRC_DIR)/kapoorvm.c
OBJ = kapoorvm.o
OUT = kapoorvm

.PHONY: all clean run

all: $(OUT)

$(OUT): $(OBJ)
	cc $(flags) $^ -o $@ $(ldflags)

$(OBJ): $(SRC) $(INC_DIR)/kapoorvm.h
	cc $(flags) -I$(INC_DIR) -c $(SRC) -o $(OBJ)

clean:
	rm -f *.o $(OUT)

run: all
	./$(OUT)
