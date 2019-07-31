all: 
	rm README.md
	touch README.md
	echo "## Guessinggame" >> README.md
	date >> README.md
	wc -l guessinggame.sh >> README.md

clean:
	rm README.md

