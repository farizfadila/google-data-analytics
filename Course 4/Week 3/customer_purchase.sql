CREATE TABLE CustomerPurchase(
    id INT NOT NULL AUTO_INCREMENT,
    tanggal DATETIME NULL,
    id_transaksi INT NULL,
    id_pelanggan INT NULL,
    produk VARCHAR(255) NULL,
    kode_produk VARCHAR(255) NULL,
    warna_produk VARCHAR(255) NULL,
    harga_produk FLOAT NULL,
    jumlah_pembelian INT NULL,
    harga_pembelian VARCHAR(255) NULL,
    pendapatan FLOAT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

SELECT *
FROM
    CustomerPurchase;

DESC CustomerPurchase;

SELECT harga_pembelian
FROM CustomerPurchase
ORDER BY harga_pembelian;
-- harga_pembelian tidak bisa disorting karena type datanya varchar(255)

SELECT
    CAST(harga_pembelian AS FLOAT)
FROM CustomerPurchase
ORDER BY CAST(harga_pembelian AS FLOAT) DESC ;

SELECT CAST(tanggal AS DATE) AS tanggal,
       produk,
       jumlah_pembelian,
       harga_pembelian,
       pendapatan
FROM CustomerPurchase
WHERE tanggal BETWEEN "2020-12-01" AND "2020-12-31";

SELECT
    produk,
    kode_produk,
    warna_produk,
    CONCAT(kode_produk,warna_produk) AS kode_produk_baru
FROM CustomerPurchase;

SELECT
    COALESCE(produk,kode_produk) AS info_produk
FROM CustomerPurchase;
