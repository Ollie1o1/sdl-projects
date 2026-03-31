CFLAGS  = $(shell pkg-config --cflags sdl2) -std=c17 -Wall
LDFLAGS = $(shell pkg-config --libs sdl2) -lm

main: main.c
	clang $(CFLAGS) main.c -o main $(LDFLAGS)
clean:
	rm -f main
