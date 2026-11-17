#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -q"

echo "Enter your username:"
read -r username
username_escaped=$(printf '%s' "$username" | sed "s/'/''/g")

user_id=$($PSQL -c "SELECT user_id FROM users WHERE username = '$username_escaped';")

if [[ -n $user_id ]]; then
  db_username=$($PSQL -c "SELECT username FROM users WHERE user_id = $user_id;")
  games_played=$($PSQL -c "SELECT COUNT(*) FROM games WHERE user_id = $user_id;")
  best_game=$($PSQL -c "SELECT MIN(number_of_guesses) FROM games WHERE user_id = $user_id;")
  echo "Welcome back, $db_username! You have played $games_played games, and your best game took $best_game guesses."
else
  $PSQL -c "INSERT INTO users (username) VALUES ('$username_escaped');"
  user_id=$($PSQL -c "SELECT user_id FROM users WHERE username = '$username_escaped';")
  echo "Welcome, $username! It looks like this is your first time here."
fi

secret_number=$((RANDOM % 1000 + 1))
number_of_guesses=0

echo "Guess the secret number between 1 and 1000:"

while true; do
  read -r guess

  if [[ ! $guess =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    continue
  fi

  ((number_of_guesses++))

  if (( guess < secret_number )); then
    echo "It's higher than that, guess again:"
  elif (( guess > secret_number )); then
    echo "It's lower than that, guess again:"
  else
    $PSQL -c "INSERT INTO games (user_id, number_of_guesses) VALUES ($user_id, $number_of_guesses);"
    echo "You guessed it in $number_of_guesses tries. The secret number was $secret_number. Nice job!"
    sleep 0.1
    break
  fi
done
