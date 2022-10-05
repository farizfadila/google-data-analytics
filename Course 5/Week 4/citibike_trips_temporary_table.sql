/*
 Kueri ini menggunakan dataset dari 
 bigquery-public-data.new_york.citibike_trips
 */

WITH trip_over_1_hr AS (SELECT *
FROM bigquery-public-data.new_york.citibike_trips
WHERE tripduration>=60)

## Count how many trips are 60+ minutes long

SELECT COUNT(*) AS num_trip_over_1_hr
FROM trip_over_1_hr;
