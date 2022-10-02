/*
 Dataset yang digunakan dalam kueri ini adalah
 "pemesanan.csv"
 "gudang.csv"
 */

-- HANDLE DATE FORMAT for tanggal_pemesanan and tanggal_pengiriman
SELECT
    id_pemesanan,
    id_pelanggan,
    id_gudang,
    STR_TO_DATE(tanggal_pemesanan,"%m/%d/%y") AS tanggal_pemecahan,
    STR_TO_DATE(tanggal_pengiriman,"%m/%d/%y") AS tanggal_pengiriman
FROM pemesanan;

-- Jumlah negara bagian
SELECT
    COUNT(DISTINCT gudang.`negara bagian`) AS jumlah_negara_bagian
FROM pemesanan
INNER JOIN gudang
ON pemesanan.id_gudang=gudang.id_gudang;

-- Total pemesanan per negara bagian
SELECT
    gudang.`negara bagian` AS negara_bagian,
    COUNT(pemesanan.id_pemesanan) AS total_pemesanan
FROM pemesanan
INNER JOIN gudang
ON pemesanan.id_gudang=gudang.id_gudang
GROUP BY negara_bagian;
