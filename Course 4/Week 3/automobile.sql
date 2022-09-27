/*
 Membersihkan data menggunakan SQL

 Dataset ini diambil dari situs
 https://archive.ics.uci.edu/ml/datasets/Automobile

 (Cek dokumentasi untuk melihat detail informasi atribut)
*/

CREATE DATABASE data_fariz;

USE data_fariz;

CREATE TABLE automobile(
    id INT NOT NULL AUTO_INCREMENT,
    make VARCHAR(255) NULL,
    fuel_type VARCHAR(255) NULL,
    num_of_doors  VARCHAR(255) NULL,
    body_style VARCHAR(255) NULL,
    drive_wheels VARCHAR(255) NULL,
    engine_location VARCHAR(255) NULL,
    wheel_base FLOAT NULL,
    length FLOAT NULL,
    width FLOAT NULL,
    height FLOAT NULL,
    curb_weight INT NULL,
    engine_type VARCHAR(255) NULL,
    num_of_cylinders VARCHAR(255) NULL,
    engine_size INT NULL,
    fuel_system VARCHAR(255) NULL,
    compression_ratio FLOAT NULL,
    horsepower INT NULL,
    city_mpg INT NULL,
    highway_mpg INT NULL,
    price INT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

SELECT *
FROM automobile;

-- Melihat deskripsi tabel
SELECT
    column_name, data_type, is_nullable
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE table_name="automobile";

-- Check Null Values each Column
SELECT
    COUNT(id),
    COUNT(make),
    COUNT(fuel_type),
    COUNT(num_of_doors),
    COUNT(body_style),
    COUNT(drive_wheels),
    COUNT(engine_location),
    COUNT(wheel_base),
    COUNT(length),
    COUNT(width),
    COUNT(height),
    COUNT(curb_weight),
    COUNT(engine_type),
    COUNT(num_of_cylinders),
    COUNT(engine_size),
    COUNT(fuel_system),
    COUNT(compression_ratio),
    COUNT(horsepower),
    COUNT(city_mpg),
    COUNT(highway_mpg),
    COUNT(price)
FROM automobile;
-- num_of_doors memiliki dua null values

-- Check fuel_type unexpected value
SELECT
    DISTINCT fuel_type
FROM
    automobile;
-- fuel_type tidak memiliki nilai yang tak terduga

-- Check length interval value
SELECT
    MIN(length) AS min_length,
    MAX(length) AS max_length
FROM
    automobile;
-- Interval length column sesuai dengan dokumentasi

-- Handle null values
SELECT *
FROM automobile
WHERE
    num_of_doors IS NULL;

UPDATE automobile
SET num_of_doors="four"
WHERE id=28 or id=64;

-- Mengidentifikasi potensi kesalahan nilai
SELECT DISTINCT num_of_cylinders
FROM automobile;

UPDATE automobile
SET num_of_cylinders="two"
WHERE num_of_cylinders="tow";

SELECT
    MIN(compression_ratio),
    MAX(compression_ratio)
FROM automobile;

SELECT COUNT(*) AS num_of_error_values_compression_ratio
FROM automobile
WHERE compression_ratio>23;

DELETE FROM automobile
WHERE compression_ratio=70;

SELECT DISTINCT drive_wheels
FROM automobile;

SELECT
    DISTINCT drive_wheels,
    LENGTH(drive_wheels)
FROM automobile;

UPDATE automobile
SET drive_wheels=TRIM(drive_wheels)
WHERE TRUE;

-- Nilai maksimum price
SELECT MAX(price)
FROM automobile;
