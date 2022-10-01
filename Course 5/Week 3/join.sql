/*
Gunakan dataset "karyawan.csv" dan "departemen.csv"
*/

-- INNER JOIN
SELECT
    karyawan.nama AS nama_karyawan,
    karyawan.jabatan AS jabatan,
    departemen.nama AS departemen
FROM karyawan
JOIN departemen
ON karyawan.departemen_id=departemen.departemen_id;

SELECT
    karyawan.nama AS nama_karyawan,
    karyawan.jabatan AS jabatan,
    departemen.nama AS departemen
FROM karyawan
INNER JOIN departemen
ON karyawan.departemen_id=departemen.departemen_id;

-- LEFT JOIN
SELECT
    karyawan.nama AS nama_karyawan,
    karyawan.jabatan AS jabatan,
    departemen.nama AS departemen
FROM karyawan
LEFT JOIN departemen
ON karyawan.departemen_id=departemen.departemen_id;

-- RIGHT JOIN
SELECT
    karyawan.nama AS nama_karyawan,
    karyawan.jabatan AS jabatan,
    departemen.nama AS departemen
FROM karyawan
RIGHT JOIN departemen
ON karyawan.departemen_id=departemen.departemen_id;

-- FULL OUTER JOIN
SELECT
    karyawan.nama AS nama_karyawan,
    karyawan.jabatan AS jabatan,
    departemen.nama AS departemen
FROM karyawan
LEFT JOIN departemen
ON karyawan.departemen_id=departemen.departemen_id
UNION
SELECT
    karyawan.nama AS nama_karyawan,
    karyawan.jabatan AS jabatan,
    departemen.nama AS departemen
FROM karyawan
RIGHT JOIN departemen
ON karyawan.departemen_id=departemen.departemen_id;
-- NOTE: MySQL tidak support FULL OUTER JOIN
-- FULL OUTER JOIN pada MySQL diatasi dengan LEFT JOIN dan RIGHT JOIN yang di UNION
