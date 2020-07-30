#!/usr/bin/env bash
README.md: guessinggame.sh
	touch README.md
	echo "# guessinggame" > README.md
	echo "## Created at: " $$(date) >> README.md
	echo "### No of lines: " $$(wc -l < guessinggame.sh) >> README.md
clean:
	rm README.md
