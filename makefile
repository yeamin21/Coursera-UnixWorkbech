#!/usr/bin/env bash
all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# guessinggame" > README.md
	date >> README.md
	echo "  \n" >> README.md
	wc -l < guessinggame.sh >> README.md
clean:
	rm README.md
