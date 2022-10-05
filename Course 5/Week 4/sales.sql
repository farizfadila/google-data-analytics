/*
 Kueri ini menggunakan dataset
 "Sales_clean.csv"
 "Products_clean.csv"
 "Inventory_clean.csv"
 */

-- Check sales dataset's information_schema
SELECT
    COLUMN_NAME,
    DATA_TYPE,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name="sales";

-- Check products dataset's information_schema
SELECT
    COLUMN_NAME,
    DATA_TYPE,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name="products" AND table_schema="data_fariz";

-- Check inventory dataset's information_schema
SELECT
    COLUMN_NAME,
    DATA_TYPE,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name="inventory";

-- Check date interval's dataset
SELECT
    MIN(Date) AS min_date,
    MAX(Date) AS max_date
FROM sales;
-- Dataset mewakili data pada tahun 2017 sampai 2020

-- Sales by ProductId per month
SELECT
    EXTRACT(YEAR FROM Date) AS Year,
    EXTRACT(MONTH FROM Date) AS Month,
    ProductId,
    ROUND(MIN(UnitPrice),2) AS Min_UnitPrice,
    ROUND(MAX(UnitPrice),2) AS Max_UnitPrice,
    ROUND(AVG(UnitPrice),2) AS Avg_UnitPrice,
    SUM(Quantity) AS UnitsSold
FROM sales
GROUP BY Year,Month,ProductId;

-- Top Product Sales
SELECT
    sales.ProductId,
    products.ProductName,
    sales.sold,
    sales.total_price
FROM
    (SELECT
        ProductId,
        ROUND(SUM(Quantity*UnitPrice),2) AS total_price,
        SUM(Quantity) AS sold
    FROM sales
    GROUP BY ProductId
    ORDER BY total_price DESC) AS sales
INNER JOIN data_fariz.products AS products
ON sales.ProductId=products.ProductId
ORDER BY total_price DESC;
