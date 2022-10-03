/*
 Dataset ini menggunakan dataset dari
 https://www.kaggle.com/datasets/neuromusic/avocado-prices
 */

-- Deksripsi dataset
SELECT
    COLUMN_NAME,
    DATA_TYPE,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name="avocado_prices";

-- Validasi kolom `Total Bags`
SELECT
    `Total Bags`,
    ROUND(`Small Bags`+`Large Bags`+`XLarge Bags`,2) AS total_bags_calc
FROM avocado_prices;
/*
kolom `Total Bags` merupakan penjumlahan kolom
`Small Bags`, `Large Bags`, dan `XLarge Bags`

Kolom `Total Bags` dapat digunakan untuk
analisis lebih lanjut.
*/

-- Persentase `Small Bags`, `Large Bags`, dan `XLarge Bags`
SELECT
    Date,
    region,
    `Total Bags` AS total_bags,
    `Small Bags` AS small_bags,
    `Large Bags` AS large_bags,
    `XLarge Bags` AS xlarge_bags,
    (`Small Bags`/`Total Bags`)*100 AS small_bags_percent,
    (`Large Bags`/`Total Bags`)*100 AS large_bags_percent,
    (`XLarge Bags`/`Total Bags`)*100 AS xlarge_bags_percent
FROM avocado_prices;
