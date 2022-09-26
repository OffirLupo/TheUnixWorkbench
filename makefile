#/usr/bin/env bash

all: README.md

README.md: guessinggame.sh
	echo "## The Unix Workbench course assignment: Bash, Make, Git, and GitHub" > README.md
	echo -n "\n**The date and time at which make was run** " >> README.md
	date >> README.md
	echo -n "\n**The number of lines of code contained in guessinggame.sh** " >> README.md
	wc -l guessinggame.sh >> README.md 
