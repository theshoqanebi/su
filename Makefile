LOCAL_PATH := $(CURDIR)
CC := clang
CFLAGS := -Werror -Wextra

SRCS := su.c

OBJS := $(SRCS:.c=.o)

all: su

su: $(OBJS)
	$(CC) $(CFLAGS) -static -o $@ $^ -lc

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJS) su