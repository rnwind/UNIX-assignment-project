function get_number {
	local g="x"
	local regexp="^([1-9]+[0-9]*)*0*$"
	while [[ ! $g =~ $regexp ]] || [[ $g = "" ]]
	do
		read g
	done
	echo $g
}

echo "How many files are in the current directory ? (Please enter a number >=0)"
g=$(get_number)
nf=$(($(ls -1a | wc -l)-2))

while [[ ! $g -eq $nf ]]
do
	q=$(($nf-$g))
	if [[ $q -gt 0 ]]
	then
		echo "Your guess is too low, try again..."
	else
		echo "Your guess is to high, try again..."
	fi
	g=$(get_number)
done

echo "Bingo! Thanks for playing!"

