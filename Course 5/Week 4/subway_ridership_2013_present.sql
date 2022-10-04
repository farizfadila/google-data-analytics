/*
 Kueri ini menggunakan dataset dari
 bigquery-public-data.new_york_subway.subway_ridership_2013_present
 */

-- Check table information_schema
SELECT
    column_name,
    data_type,
    is_nullable
FROM bigquery-public-data.new_york_subway.INFORMATION_SCHEMA.COLUMNS
WHERE table_name="subway_ridership_2013_present";

-- ridership from 2013 to 2014 per station
SELECT
    station_name,
    SUM(ridership_2013) AS ridership_2013,
    SUM(ridership_2014) AS ridership_2014,
    SUM(ridership_2014)-SUM(ridership_2013) AS change_2014_raw
FROM bigquery-public-data.new_york_subway.subway_ridership_2013_present
GROUP BY station_name
ORDER BY station_name;

-- average ridership from 2013 to 2016
SELECT
    station_name,
    ridership_2013,
    ridership_2014,
    ridership_2015,
    ridership_2016,
    (ridership_2013+ridership_2014+ridership_2015+ridership_2016)/4 AS average
FROM
    bigquery-public-data.new_york_subway.subway_ridership_2013_present;

-- average ridership from 2016 to 2018
SELECT
    station_name,
    ridership_2016,
    ridership_2017,
    ridership_2018,
    (ridership_2016+ridership_2017+ridership_2018)/3 AS average
FROM
    bigquery-public-data.new_york_subway.subway_ridership_2013_present;

SELECT
    AVG(ridership_2013) AS avg_ridership_2013,
    AVG(ridership_2014) AS avg_ridership_2014,
    AVG(ridership_2015) AS avg_ridership_2015,
    AVG(ridership_2016) AS avg_ridership_2016,
    AVG(ridership_2017) AS avg_ridership_2017,
    AVG(ridership_2018) AS avg_ridership_2018
FROM
    bigquery-public-data.new_york_subway.subway_ridership_2013_present;
-- Penumpang dari tahun 2013 sampai 2016 terjadi kenaikan secara kontinu,
-- Tetapi pada tahun 2017 dan 2018 terjadi penurunan.
