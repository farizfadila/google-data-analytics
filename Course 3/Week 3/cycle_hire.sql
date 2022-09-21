-- Deskripsi Dataset cycle_hire
SELECT
    table_schema,table_name,column_name,is_nullable,data_type
FROM
    `bigquery-public-data`.london_bicycles.INFORMATION_SCHEMA.COLUMNS
WHERE table_name='cycle_hire';

-- Jumlah station
SELECT COUNT(distinct end_station_name) as jumlah_station
FROM `bigquery-public-data.london_bicycles.cycle_hire` as ch;

-- Daftar nama station
SELECT distinct end_station_name
FROM `bigquery-public-data.london_bicycles.cycle_hire` as ch;

-- Jumlah semua perjalanan yang berlangsung selama 20 menit atau lebih
SELECT COUNT(*) as num_of_trips
FROM `bigquery-public-data.london_bicycles.cycle_hire` as ch
WHERE duration>=20*60;

-- bike_id 1710 berangkat dari stasiun-stasiun dengan nama apa saja?
SELECT DISTINCT start_station_name
FROM `bigquery-public-data.london_bicycles.cycle_hire` as ch
WHERE bike_id=1710;

-- Berapa banyak bike_id yang berakhir perjalanannya di "Moor Street, Soho"?
SELECT COUNT(bike_id) as total_trips
FROM `bigquery-public-data.london_bicycles.cycle_hire` as ch
WHERE end_station_name="Moor Street, Soho";

-- Apa station_id di "Canton Street, Poplar"?
SELECT DISTINCT start_station_id
FROM `bigquery-public-data.london_bicycles.cycle_hire` as ch
WHERE start_station_name="Canton Street, Poplar" AND start_station_id IS NOT NULL;

-- Apa nama stasiun yang memiliki ID 111?
SELECT DISTINCT start_station_name
FROM `bigquery-public-data.london_bicycles.cycle_hire`
WHERE start_station_id=111;

-- Berapa banyak masing-masing perjalanan bike_id dengan durasi lebih dari 2400 detik (atau 40 menit)?
SELECT COUNT(*) as num_of_trips
FROM `bigquery-public-data.london_bicycles.cycle_hire`
WHERE duration>2400;

-- Di stasiun mana perjalanan sepeda dengan rental_id 57635395 berakhir?
SELECT end_station_name
FROM `bigquery-public-data.london_bicycles.cycle_hire`
WHERE rental_id=57635395;
