/*
 Dataset yang digunakan dalam kueri ini adalah
 "pemesanan.csv"
 "gudang.csv"
 */

-- Check informasi tabel pemesanan
SELECT
    COLUMN_NAME,
    DATA_TYPE,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name="pemesanan";

-- Check informasi tabel gudang
SELECT
    COLUMN_NAME,
    DATA_TYPE,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name="gudang";


/*
 LATIHAN KUERI KOMPLEKS
 
 Buatlah kueri yang menghasilkan tabel dengan kolom
 id_gudang,
 nama_gudang, (dengan format "negara bagian: alamat_gudang")
 num_of_orders, (yang merupakan jumlah order pada gudang tersebut)
 total_order, (yang merupakan total keseluruhan order)
 status_order
 
 Adapun status_order berisi:
 1. Terisi 0-20% dari total order
 2. Terisi 21-60% dari total order
 3. Terisi lebih dari 60% dari total order
 */
SELECT
    gudang.id_gudang,
    CONCAT(gudang.`negara bagian`,": ",gudang.alamat_gudang) AS nama_gudang,
    num_of_orders,
    (
        SELECT COUNT(*)
        FROM pemesanan
        ) AS total_orders,
    CASE
        WHEN num_of_orders/(SELECT COUNT(*)
        FROM pemesanan) < 0.2
        THEN "Terisi 0-20% dari total order"
        WHEN num_of_orders/(SELECT COUNT(*)
        FROM pemesanan) >= 0.2 AND
             num_of_orders/(SELECT COUNT(*)
        FROM pemesanan) <= 0.6
        THEN "Terisi 21-60% dari total order"
        WHEN num_of_orders/(SELECT COUNT(*)
        FROM pemesanan) > 0.6
        THEN "Terisi lebih dari 60% dari total order"
    END AS status_gudang
FROM gudang
LEFT JOIN
    (
        SELECT
          id_gudang,
          COUNT(*) as num_of_orders
        FROM pemesanan
        GROUP BY id_gudang
    ) AS num_order_gudang
ON gudang.id_gudang=num_order_gudang.id_gudang
WHERE num_of_orders IS NOT NULL;
