CC = gcc

SRC_DIR = ./src

all: proot-loader

proot-loader:
	${CC} ${CFLAGS} ${LDFLAGS} -I${SRC_DIR} \
		-fPIC -ffreestanding -static -nostdlib \
		${SRC_DIR}/loader.c -o $@

