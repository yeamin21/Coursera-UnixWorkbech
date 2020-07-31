#!/usr/bin/env bash
no_files=$(ls| wc -l)
function check {
read g
while [ $g -ne $no_files ]
do
if [ $g -gt $no_files ]
then
	if [ $((g - no_files)) -ge 3 ]
	then
		echo "Your guess is too high. Try again"
	elif [ $((g - no_files)) -lt 3 ]
	then
		echo "You are close. Try again"
	fi
read g
elif [ $g -lt $no_files ]
then
	if [ $((no_files - g)) -ge 3 ]
	then	
		echo "Your guess is too low. Try again"
	elif [ $((no_files - g)) -lt 3 ]
	then
		echo "You are close. Try again"
	fi	
read g
fi
done
}
echo "Guess how many files in this directory!"
check
echo "Congratulations! you guessed right"