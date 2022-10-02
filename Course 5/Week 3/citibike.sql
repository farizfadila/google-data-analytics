/*
 Kueri ini menggunakan dataset dari bigquery public data dengan tabel berikut
 bigquery-public-data.new_york.citibike_trips
 bigquery-public-data.new_york.citibike_stations
 */

-- Perbandingan jumlah sepeda tersedia dengan rata-rata jumlah sepeda tersedia
SELECT
    station_id,
    num_bikes_available,
    (SELECT
        AVG(num_bikes_available) AS num_bikes_available
     FROM bigquery-public-data.new_york.citibike_stations) AS avg_num_bikes_available
FROM bigquery-public-data.new_york.citibike_stations;

-- Angka dari perjalanan yang dimulai dari masing-masing station
SELECT
    station_id,
    name,
    number_of_rides AS number_of_rides_starting_at_station
FROM
    (
        SELECT
            start_station_id,
            COUNT(*) AS number_of_rides
        FROM bigquery-public-data.new_york.citibike_trips
        GROUP BY start_station_id
    ) AS station_num_trips
INNER JOIN bigquery-public-data.new_york.citibike_stations
ON station_id = start_station_id
ORDER BY number_of_rides DESC;

SELECT
    station_id,
    name
FROM
    bigquery-public-data.new_york.citibike_stations
WHERE station_id IN
      (
          SELECT start_station_id
          FROM bigquery-public-data.new_york.citibike_trips
          WHERE usertype="Subscriber"
          );

-- Angka dari perjalanan user "Subscriber" per station
SELECT
    stations.name AS station,
    num_of_rides
FROM
    (SELECT
        trips.start_station_id,
        COUNT(*) AS num_of_rides
     FROM bigquery-public-data.new_york.citibike_trips AS trips
     INNER JOIN bigquery-public-data.new_york.citibike_stations AS stations
     ON trips.start_station_id=stations.station_id
     WHERE usertype="Subscriber"
     GROUP BY start_station_id
     ORDER BY num_of_rides DESC)
INNER JOIN bigquery-public-data.new_york.citibike_stations AS stations
ON start_station_id=stations.station_id;
