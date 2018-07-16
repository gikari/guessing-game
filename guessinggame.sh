#!/bin/bash

function main {
    echo -n "Hello! "
    while [[ true ]]; do
        echo "How many files in the current directory? Please, type the answer below:"
        read inputed_data
        local right_answer=$(ls -l | egrep "^-.*$" | wc -l)
        if [[ $inputed_data -eq $right_answer ]]; then
            echo "Congratulations! You're right."
            echo "Bye."
            break
        elif [[ $inputed_data -gt $right_answer ]]; then
            echo "Sorry. Your answer is too high. Try something lesser."
        elif [[ $inputed_data -lt $right_answer ]]; then
            echo "Sorry. Your answer is too low. Try something bigger."
        else
            echo "Sorry. Hard to read your handwriting."
        fi
    done

}

main

