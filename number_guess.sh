#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"
NUMBER=$(( RANDOM % 1000 + 1 ))

echo -e "\n~~GUESS THE NUMBER~~\n"

echo "Enter your username:"
read USERNAME

PLAYER_INFO=$($PSQL "select username from users where username='$USERNAME'")
if [[ -z $PLAYER_INFO ]]
then
  ADD_USERNAME=$($PSQL "insert into users (username) values ('$USERNAME')")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "select count(*) from games join users using(user_id) where username='$USERNAME'" | xargs)
  BEST_GAME=$($PSQL "select min(guesses) from games join users using(user_id) where username='$USERNAME'" | xargs)
  echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo -e "\nGuess the secret number between 1 and 1000:"
read GUESS

GUESSES=1
until [[ $NUMBER == $GUESS ]]
do
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    read GUESS
  else
    (( GUESSES++ ))
    if [[ $GUESS -gt $NUMBER ]]
    then
      echo "It's lower than that, guess again:"
      read GUESS
    elif [[ $GUESS -lt $NUMBER ]]
    then
      echo "It's higher than that, guess again:"
      read GUESS
    fi
  fi
done

echo -e "\nYou guessed it in $GUESSES tries. The secret number was $NUMBER. Nice job!"
USER_ID=$($PSQL "select user_id from users where username='$USERNAME'")
INSERT_GAME=$($PSQL "insert into games (user_id, guesses) values ($USER_ID, $GUESSES)")