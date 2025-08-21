#!/usr/bin/env bash

function guess_files {
  local count=$(ls -1 | wc -l)
  while true
  do
    echo "Guess how many files are in the current directory:"
    read guess
    if [[ $guess -eq $count ]]
    then
      echo "Congratulations! You guessed correctly."
      break
    elif [[ $guess -lt $count ]]
    then
      echo "Too low, try again."
    else
      echo "Too high, try again."
    fi
  done
}

guess_files

