PREFIX=~/.local

all:

check:
	shellcheck sbox

install: sbox
	cp sbox $(PREFIX)/bin/

