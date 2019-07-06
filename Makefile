OBJECTS := rawsockets.o
CC = gcc
CFLAGS = -Wall -Wextra -Wpedantic -std=gnu11
TARGET = rawsockets
LIBS = 

all: $(TARGET)

rawsockets.o: rawsockets.c

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) $^ -o $@ $(LIBS)

clean:
	$(RM) $(OBJECTS) $(TARGET)
