#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guessing -t --no-align -c"

# function to generate a random number between 1 and 1000
RANDOM_NUMBER_GENERATOR () {
  echo $(( 1 + $RANDOM % 1000 )) 
}

# fucntion to create a user with a supplied username if it does not exist in the database
CREATE_USER () {
  ADD_USER=$($PSQL "insert into users(username) values('$1')")
}

# function to get user data if the user exists
GET_USER_DATA () {
  USER_RESULT=$($PSQL "select count(*) as game_count, min(guess_count) as best_game from games inner join users using(user_id) where username='$1' group by username")
  echo "$USER_RESULT"
}

# fucntion to run the main game
GUESSING_GAME () {
  echo "Enter your username:"
  read USERNAME
  USERNAME_RESULT=$($PSQL "select user_id from users where username='$USERNAME'")
  if [[ -z "$USERNAME_RESULT" ]]
  then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    CREATE_USER "$USERNAME"
    USER_ID=$($PSQL "select user_id from users where username='$USERNAME'")
  else
    USER_ID=$($PSQL "select user_id from users where username='$USERNAME'")
    GET_USER_DATA "$USERNAME" | while IFS='|' read -r GAME_COUNT BEST_GAME
    do
      echo "Welcome back, $USERNAME! You have played $GAME_COUNT games, and your best game took $BEST_GAME guesses."
    done
  fi
  SECRET_NUMBER=$(RANDOM_NUMBER_GENERATOR)
  echo "$SECRET_NUMBER"
  echo "Guess the secret number between 1 and 1000:"
  read USER_GUESS
  if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    read USER_GUESS
  else
    GUESS_COUNT=1
    while (( $USER_GUESS != $SECRET_NUMBER ))
    do
      if (( $USER_GUESS < $SECRET_NUMBER ))
      then
        echo "It's higher than that, guess again:"
        read USER_GUESS
        ((++GUESS_COUNT))
      else
        echo "It's lower than that, guess again:"
        read USER_GUESS
        ((++GUESS_COUNT))
      fi
    done
    INSERT_GAME_RESULT=$($PSQL "insert into games(secret_number, guess_count, user_id) values($SECRET_NUMBER, $GUESS_COUNT, $USER_ID)")
    echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
  fi
}

GUESSING_GAME