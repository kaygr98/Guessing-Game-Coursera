#!/usr/bin/env bash

get_guess() {
    echo "Can you guess how many files are in the current directory?"
    read guess
}

file_total=$(ls -1 | wc -l)

get_guess

while true
do

    if [[ $guess -eq $file_total ]]
    then
        echo "Your guess is correct. Congratulations!"
        break
    fi

    if [[ $guess -lt $file_total ]]
    then
        echo "Your guess is too low. Try again!"
    else
        echo "Your guess is too high. Try again!"
    fi

    get_guess

done
