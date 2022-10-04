/*
 Dataset ini menggunakan dataset dari
 bigquery-public-data.new_york.citibike_trips
 */

SELECT
    column_name,
    data_type,
    is_nullable
FROM bigquery-public-data.new_york.INFORMATION_SCHEMA.COLUMNS
WHERE table_name="citibike_trips";

-- Angka perjalanan YoY
SELECT
    EXTRACT(YEAR FROM starttime) AS year,
    COUNT(*) AS num_of_rides
FROM bigquery-public-data.new_york.citibike_trips
GROUP BY year
ORDER BY year DESC;
