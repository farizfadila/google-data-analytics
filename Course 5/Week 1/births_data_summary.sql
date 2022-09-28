/*
10 County (Kabupaten) dengan jumlah kelahiran
terendah pada tahun 2016-2018
 */
SELECT *
FROM bigquery-public-data.sdoh_cdc_wonder_natality.county_natality
ORDER BY Births
LIMIT 10;

/*
10 County (Kabupaten) dengan jumlah kelahiran
tertinggi pada tahun 2016-2018
 */
 SELECT *
FROM bigquery-public-data.sdoh_cdc_wonder_natality.county_natality
ORDER BY Births DESC
LIMIT 10;

/*
10 kelahiran terbanyak pada tahun 2018
*/
SELECT *
FROM bigquery-public-data.sdoh_cdc_wonder_natality.county_natality
WHERE Year="2018-01-01"
ORDER BY Births DESC
LIMIT 10;

SELECT *
FROM bigquery-public-data.sdoh_cdc_wonder_natality.county_natality
WHERE Year="2018-01-01"
ORDER BY Births DESC;
