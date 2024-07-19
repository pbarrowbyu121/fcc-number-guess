#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

GUESSING_GAME() {
  USER_ID=$1
  RANDOM_NUMBER=$(( (RANDOM % 1000) + 1 ))
  GUESSES=0
  KEEP_GUESSING=true
  
  echo "Guess the secret number between 1 and 1000:"    
  while $KEEP_GUESSING; do
    read GUESS
    
    if ! [[ "$GUESS" =~ ^[0-9]+$ ]]; then
      echo "That is not an integer, guess again:"
      continue
    fi
    
    ((GUESSES++))

    if [[ $GUESS -eq $RANDOM_NUMBER ]]; then
      echo "You guessed it in $GUESSES tries. The secret number was $RANDOM_NUMBER. Nice job!"
      KEEP_GUESSING=false
    elif [[ $GUESS -lt $RANDOM_NUMBER ]]; then
      echo "It's higher than that, guess again:"
    elif [[ $GUESS -gt $RANDOM_NUMBER ]]; then
      echo "It's lower than that, guess again:"
    fi
  done

  ADD_GAME_RESULT=$($PSQL "INSERT INTO games(number_of_guesses, user_id) VALUES('$GUESSES', '$USER_ID')")  
  return
  
}

GET_GAMES() {
  USER_ID=$1
  GAMES=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID")  
  echo $GAMES
}

GET_BEST_GAME() {
  USER_ID=$1
  GAMES=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE user_id = $USER_ID")
  echo $GAMES
}

WELCOME_MESSAGE() {
  echo "Enter your username:"
  read USERNAME
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  if [[ -z $USER_ID ]]
    # if no user exists, create it
    then      
      INSERT_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
      USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")  
      echo "Welcome, $USERNAME! It looks like this is your first time here."          
    else
      GAMES=$(GET_GAMES $USER_ID)
      MIN_GUESSES=$(GET_BEST_GAME $USER_ID)      
      echo "Welcome back, $USERNAME! You have played $GAMES games, and your best game took $MIN_GUESSES guesses."
  fi
  GUESSING_GAME $USER_ID
  
}

MAIN() {  
  WELCOME_MESSAGE
  # GUESSING_GAME $USER_ID
}

MAIN