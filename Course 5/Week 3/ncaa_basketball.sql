/*
 Dataset yang digunakan dalam query ini adalah
 bigquery-public-data.ncaa_basketball.mbb_historical_teams_seasons
 bigquery-public-data.ncaa_basketball.mascots
 */

SELECT
    team_seasons.market AS university,
    team_seasons.name AS team_name,
    team_seasons.wins,
    team_seasons.losses,
    team_seasons.ties,
    mascots.mascot AS team_mascot
FROM
    bigquery-public-data.ncaa_basketball.mbb_historical_teams_seasons AS team_seasons
LEFT JOIN bigquery-public-data.ncaa_basketball.mascots AS mascots
ON team_seasons.team_id=mascots.id
WHERE team_seasons.season=1984 AND team_seasons.division=1
ORDER BY  university;

SELECT
    team_seasons.market AS university,
    team_seasons.name AS team_name,
    team_seasons.wins,
    team_seasons.losses,
    team_seasons.ties,
    mascots.mascot AS team_mascot
FROM
    bigquery-public-data.ncaa_basketball.mbb_historical_teams_seasons AS team_seasons
INNER JOIN bigquery-public-data.ncaa_basketball.mascots AS mascots
ON team_seasons.team_id=mascots.id
WHERE team_seasons.season=1984 AND team_seasons.division=1
ORDER BY  university;
