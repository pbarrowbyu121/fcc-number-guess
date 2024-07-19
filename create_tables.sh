#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# user table: user_id, username
$PSQL "CREATE TABLE users()"
$PSQL "ALTER TABLE users ADD COLUMN user_id SERIAL PRIMARY KEY"
$PSQL "ALTER TABLE users ADD COLUMN username VARCHAR(22) NOT NULL"

# games table: game_id, number_of_guesses, user_id
$PSQL "CREATE TABLE games()"
$PSQL "ALTER TABLE games ADD COLUMN game_id SERIAL PRIMARY KEY"
$PSQL "ALTER TABLE games ADD COLUMN number_of_guesses INT NOT NULL"
$PSQL "ALTER TABLE games ADD COLUMN user_id INT NOT NULL"
$PSQL "ALTER TABLE games ADD FOREIGN KEY (user_id) REFERENCES users(user_id)"
