-- Analysing Product's table
SELECT *
FROM Products
LIMIT 5;

-- ALIASING
---------------------------------------------
-- Taking the unique products
SELECT DISTINCT(ProductName)
FROM Products;
-- Rename result as: unique_products
-- Rename result as: unique_products
SELECT 
	DISTINCT(ProductName) AS unique_products
FROM Products;
---------------------------------------------

---------------------------------------------
-- AGGREGATE FUNCTIONS
-- COUNT()
---------------------------------------------
-- How many different products have we?
SELECT COUNT(DISTINCT(ProductName))
FROM Products;
-- Rename result as: no_products
SELECT 
	COUNT(DISTINCT(ProductName)) AS no_products
FROM Products;

-- MIN()
---------------------------------------------
-- What is the minimum price?
SELECT MIN(Price)
FROM Products;
-- And what is the product?
SELECT
	ProductName AS product,
	MIN(Price) AS price
FROM Products;
-- Only the product
SELECT ProductName
FROM Products
WHERE price = (SELECT MIN(Price) FROM Products);

-- AVG
---------------------------------------------
-- Price average
SELECT AVG(Price) AS average
FROM Products;
-- Precision of two decimals
SELECT ROUND(AVG(Price), 2) AS average
FROM Products;
-- What products are above the average?
SELECT
	ProductName AS products_above,
	Price
FROM products
WHERE Price > (SELECT AVG(Price) FROM Products);
-- What is the average of these products
SELECT
	AVG(Price) AS ave_price
FROM products
WHERE Price > (SELECT AVG(Price) FROM Products);