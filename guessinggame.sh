#!/usr/bin/env bash
function guessing(){
    ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "enter your guess"
        read  number
        if [ $number -lt $ans ]
        then
            echo "your guess is too low"
        elif [ $number -gt $ans ]
        then
            echo "Your guess is too high"
        else
            echo "Congratulations! Right answer"
        break;
        fi
    done
}
echo "Guess the number of files in the directory"
guessing
