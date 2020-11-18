all: README.md

README.md:
	echo -e "Title of the project: Peer-graded Assignment: Bash, Make, Git, and GitHub \n" > README.md
	echo -e "Make file was ran at: $(shell date +%Y-%m-%d:%H:%M:%S) \n" >> README.md
	echo -e "Number of lines in Shell script: guessinggame.sh is - $(shell wc -l < guessinggame.sh) \n" >> README.md
	echo -e "GitHub Pages site URL - https://priyanangari.github.io/unix-workbench-assignment/ \n" >> README.md
