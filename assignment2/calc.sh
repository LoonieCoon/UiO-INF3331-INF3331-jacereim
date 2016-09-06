#!/bin/bash

#Didn t implement any security since the assignemt didn t ask for any

#Print all input given
echo "Input: $@"

#Define an array including command line arguments
tab=("$@")

numb=${tab[1]} #Base value (0 by default)
com=${tab[0]} #What command are we doing

#Loop throgh commands
for ((i=2; i < $#; i++)); do
	#echo $i
	if [ "$com" == "S" ]; then
		numb=$(($numb + ${tab[$i]}))
	elif [ "$com" == "P"  ]; then
		numb=$(($numb * ${tab[$i]}))
	elif [ "$com" == "M" ]; then
		if [ $numb -lt ${tab[$i]} ]; then
			numb=${tab[$i]}
		fi
	elif [ "$com" == "m" ]; then
		if [ $numb -gt ${tab[$i]} ]; then
			numb=${tab[$i]}
		fi
	else
		echo "You done messed up"
		exit 1
	fi
done

echo "ANSWER: $numb"


