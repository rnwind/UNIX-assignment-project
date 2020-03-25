all: README.md

README.md: guessinggame.sh
	echo "# Guessinggame Project v.0.1" > README.md
	printf  "Creation date: " >> README.md
	date +"%D %T" >> README.md
	printf "Number of lines of code: " >> README.md 
	cat guessinggame.sh | wc -l|bc >> README.md

clean:
	rm README.md
