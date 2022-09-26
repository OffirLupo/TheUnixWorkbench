#!/usr/bin/env bash
fileNum=$(ls | wc -l) #number of files in folder


function guessGame {
	read guess #read users input
	if [[ $guess -eq $fileNum ]]
	then
		echo "Nicely done! you guessed right!"
		echo "Lets see what we have here:"
		for f in $(ls) 
		do
		echo "  - $f"
		done
		echo "and that's it"
		echo "what a game ah?" 
	else
		if [[ $guess -gt $fileNum ]]
		then
			echo "Too high! try a lower number:"
			guessGame
		elif [[ $guess -lt $fileNum ]] 
		then
			echo "Too low! try a bigger number:"
			guessGame
		fi
	fi
}

echo "Guess how many files are in the current folder:"
guessGame
