# Number Guessing Game

A simple command-line number guessing game built with **Bash** and **PostgreSQL**.  
This project was developed as part of the **freeCodeCamp Relational Database Certification**.

The script generates a random number between **1 and 1000**. The user must guess the number while the program gives hints (higher or lower). The game also stores player statistics in a PostgreSQL database.

---

## Features

- Random number generation between **1–1000**
- Username-based player system
- Tracks number of games played
- Tracks best game (fewest guesses)
- Validates user input
- Stores game results in a PostgreSQL database

---

## Technologies Used

- **Bash**
- **PostgreSQL**
- **Git**

---

## Project Structure

```
number_guessing_game/
├── number_guess.sh
├── number_guess.sql
└── README.md
```

- **number_guess.sh** – Bash script that runs the game  
- **number_guess.sql** – SQL dump used to rebuild the database  
- **README.md** – Project documentation

---

## Database Schema

### Users Table

Stores player information.

```sql
CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(22) UNIQUE NOT NULL
);
```

### Games Table

Stores results of each game.

```sql
CREATE TABLE games (
  game_id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(user_id),
  guesses INT NOT NULL
);
```

---

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/number_guessing_game.git
cd number_guessing_game
```

### 2. Create the Database

Open PostgreSQL:

```bash
psql --username=freecodecamp --dbname=postgres
```

Create the database:

```sql
CREATE DATABASE number_guess;
```

Connect to it:

```sql
\c number_guess
```

Create the tables:

```sql
CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(22) UNIQUE NOT NULL
);

CREATE TABLE games (
  game_id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(user_id),
  guesses INT NOT NULL
);
```

Exit PostgreSQL:

```sql
\q
```

---

## Running the Game

Give the script permission to execute:

```bash
chmod +x number_guess.sh
```

Run the game:

```bash
./number_guess.sh
```

---

## How the Game Works

1. The script asks the player to enter a username.
2. If the user exists, previous statistics are shown.
3. If the user is new, the system creates a new player record.
4. The player guesses the secret number.
5. The game provides hints until the correct number is guessed.
6. The number of guesses is stored in the database.

---

## Example Gameplay

```
Enter your username:
sakib

Welcome back, sakib! You have played 5 games, and your best game took 3 guesses.

Guess the secret number between 1 and 1000:
500
It's lower than that, guess again:
200
It's higher than that, guess again:
350
You guessed it in 3 tries. The secret number was 350. Nice job!
```

---

