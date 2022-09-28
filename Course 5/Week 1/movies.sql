-- Film dengan genre comedy
SELECT *
FROM movies
WHERE Genre_1="Comedy";

-- Film dengan urutan terlama
SELECT *
FROM movies
ORDER BY Release_Date;

-- Film dengan urutan terbaru
SELECT *
FROM movies
ORDER BY Release_Date DESC;

-- Film urutan terbaru dengan genre comedy 
-- dan pendapatan box office lebih dari300 jt dollar
SELECT *
FROM movies
WHERE
    Genre_1="Comedy" AND Box_Office_Revenue > 300000000
ORDER BY Release_Date DESC;
