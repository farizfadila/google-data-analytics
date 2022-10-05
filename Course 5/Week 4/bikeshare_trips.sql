/*
 Kueri ini menggunakan dataset dari
 bigquery-public-data.austin_bikeshare.bikeshare_trips

 Latihan tabel sementara
 1. Carilah bikeid dengan durasi perjalanan terlama
 2. Buat tabel station dimana bikeid terlama melakukan awal perjalanan
 3. Hitung persentase dari kontribusi station tersebut terhadap semua
    perjalanan dari bikeid terlama
 */

WITH longest_used_bike AS (
    SELECT
        bikeid,
        SUM(duration_minutes) AS trip_duration
    FROM
        bigquery-public-data.austin_bikeshare.bikeshare_trips
    GROUP BY bikeid
    ORDER BY trip_duration DESC
    LIMIT 1
),
station_w_longest_bikeid AS(
    SELECT
        longest.bikeid AS bikeid,
        trips.start_station_id AS station_id,
        COUNT(*) AS num_of_trips
    FROM longest_used_bike AS longest
    INNER JOIN
        bigquery-public-data.austin_bikeshare.bikeshare_trips AS trips
    ON longest.bikeid=trips.bikeid
    GROUP BY trips.start_station_id, longest.bikeid
    ORDER BY num_of_trips DESC
    )
SELECT
    bikeid,
    station_id,
    ROUND(num_of_trips/(
        SELECT SUM(num_of_trips)
        FROM station_w_longest_bikeid
        )*100,2) AS percent_of_trips_contribution
FROM station_w_longest_bikeid
ORDER BY percent_of_trips_contribution DESC ;
