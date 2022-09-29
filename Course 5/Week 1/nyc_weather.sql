SELECT column_name, data_type, is_nullable
FROM
    bigquery-public-data.noaa_gsod.INFORMATION_SCHEMA.COLUMNS
WHERE table_name="gsod2020";

SELECT *
FROM
    bigquery-public-data.noaa_gsod.gsod2020;

WITH nyc_weather AS
(SELECT
    stations.name,
    gsod2020.date,
    IF(gsod2020.temp=9999.9,NULL,gsod2020.temp) AS temperature,
    IF(gsod2020.wdsp="999.9",NULL,CAST(gsod2020.wdsp AS FLOAT64)) AS wind_speed,
    iF(gsod2020.prcp=99.9,0,gsod2020.prcp) AS precipitation
FROM
    bigquery-public-data.noaa_gsod.gsod2020 AS gsod2020
JOIN bigquery-public-data.noaa_gsod.stations AS stations
ON gsod2020.stn=stations.usaf
WHERE
    stations.name="LA GUARDIA AIRPORT"
    OR stations.name="JOHN F KENNEDY INTERNATIONAL")
SELECT AVG(temperature) AS average_temp
FROM nyc_weather
WHERE date BETWEEN "2020-06-01" AND "2020-06-30";
