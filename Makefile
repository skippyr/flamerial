CC:=cc
CFLAGS:=-std=c99 -pedantic -Os -Wall -Wextra -ltdk

.PHONY: all clean

all: out/preview

clean:
	rm -rf out;

out/preview: tools/preview.c
	mkdir -p out;
	${CC} ${CFLAGS} -o${@} ${^};
