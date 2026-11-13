
#!/bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line.

SQL="BEGIN; TRUNCATE TABLE games, teams RESTART IDENTITY;"

while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
    SQL+="
    INSERT INTO teams(name)
    VALUES('$WINNER'), ('$OPPONENT')
    ON CONFLICT(name) DO NOTHING;"

    SQL+="
    INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals)
    VALUES(
      $YEAR,
      '$ROUND',
      (SELECT team_id FROM teams WHERE name='$WINNER'),
      (SELECT team_id FROM teams WHERE name='$OPPONENT'),
      $WINNER_GOALS,
      $OPPONENT_GOALS
    );"
  fi
done < games.csv

SQL+=" COMMIT;"

$PSQL "$SQL"
