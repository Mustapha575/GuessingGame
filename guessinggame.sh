#!/bin/bash
# Guessing Game Script 
target=$((RANDOM % 10 + 1))
count=0

while [ $count -lt 5 ]; do 
    echo "You have $count/5 chances to guess the number." 
    read -p "Guess a number between 1 and 10: " guess
    if [ $target -eq $guess ]; then 
        echo "Congrats! You guessed the number $target correctly!"
        break
    elif [ $target -gt $guess ]; then 
        echo "Sucks for you! $guess is too low!" 
    elif [ $target -lt $guess ]; then 
        echo "Sucks for you! $guess is too high!"
    elif [ -z "$guess" ]; then
        echo "You didn't pick a number!" 
        exit 1
    fi
    ((count++))
done 