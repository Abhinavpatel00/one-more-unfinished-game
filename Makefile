CC = gcc
CFLAGS = -ggdb3 -O3 -std=c99 -Wall -Wextra -pedantic -save-temps -Wshadow -Wfloat-equal -Wpointer-arith -Wstrict-prototypes -Wformat=2 -Wcast-align -fsanitize=undefined   -ftree-vectorize -ftree-loop-vectorize -fopt-info-vec-missed -fopt-info-vec-optimized -fstrict-aliasing

LIBS = -lSDL3

# Output binary
OUT = main

# Source files
SRC = main.c 

# Build target
$(OUT): $(SRC)
	$(CC) $(SRC) $(CFLAGS) $(LIBS) -o $(OUT)

# Clean target
clean:
	rm -f $(OUT)

# Phony targets
.PHONY: clean

