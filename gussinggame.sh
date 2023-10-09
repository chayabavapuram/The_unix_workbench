#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
  local file_count=$(ls -l | grep "^-" | wc -l)
  echo "$file_count"
}

# Main game loop
while true; do
  correct_count=$(count_files)

  echo "Welcome to the Guessing Game!"
  echo "How many files are in the current directory? Make a guess:"
  read user_guess

  if [[ $user_guess -eq $correct_count ]]; then
    echo "Congratulations! You guessed it right. There are $correct_count files in the directory."
    break
  elif [[ $user_guess -lt $correct_count ]]; then
    echo "Your guess is too low. Try again."
  else
    echo "Your guess is too high. Try again."
  fi
done
