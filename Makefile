CC=gcc
OBJS=obj/hello.o

all: hello

objdir:
	mkdir -p obj

hello: objdir $(OBJS)
	$(CC) -o $@ $(LDFLAGS) $(OBJS)

obj/%.o: src/%.c
	$(CC) -c -o $@ $< $(CFLAGS)

clean:
	rm -rf obj hello

