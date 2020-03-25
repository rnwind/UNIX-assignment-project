function guessinggame {

	echo "How many files are in the current directory ?"
	read g
	nf=$(ls -l | wc -l)

	while [[ ! $g -eq $nf ]]
	do
		q=$(($nf-$g))
		if [[ q -gt 0 ]]
		then
			echo "Your guess is too low, try again..."
		else
			echo "Your guess is to high, try again..."
		fi
		read g
	done

	echo "Bingo! Thanks for playing!"
}

guessinggame
