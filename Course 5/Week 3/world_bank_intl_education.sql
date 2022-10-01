/*
 Dataset yang digunakan dalam query ini adalah
 bigquery-public-data.world_bank_intl_education.international_education
 bigquery-public-data.world_bank_intl_education.country_summary
 */

bigquery-public-data.world_bank_intl_education.international_education

SELECT
    edu.country_name,
    country_summary.country_code,
    edu.value
FROM bigquery-public-data.world_bank_intl_education.international_education as edu
INNER JOIN
    bigquery-public-data.world_bank_intl_education.country_summary as country_summary
ON edu.country_code=country_summary.country_code;

-- Berapakah nilai rata-rata jumlah uang yang dikeluarkan untuk pendidikan per wilayah?
SELECT
    country_summary.region AS wilayah,
    ROUND(AVG(edu.value),2) AS rata_rata
FROM bigquery-public-data.world_bank_intl_education.international_education as edu
INNER JOIN
    bigquery-public-data.world_bank_intl_education.country_summary as country_summary
ON edu.country_code=country_summary.country_code
WHERE country_summary.region IS NOT NULL
GROUP BY country_summary.region
ORDER BY wilayah ASC ;
