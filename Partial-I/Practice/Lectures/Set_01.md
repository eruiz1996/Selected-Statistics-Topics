---
tags:
  - SQL
---
1. Give the unique cities (sorted alphabetically) of the suppliers. From how many cities they are?
```SQL
-- 1. 
-- unique cities
SELECT
	DISTINCT(City) AS city
FROM Suppliers
ORDER BY city ASC;
-- number of cities
SELECT 
	COUNT(DISTINCT(City)) AS num
FROM Suppliers;
```
2. What is the average price for the products with a `CategoryID` of `2`?
```SQL
-- 2. Average price for categoryid = 2
SELECT AVG(Price) AS ave_price
FROM Products
WHERE CategoryID = 2;
```
3. Which is the most expensive product and what is its price?
```SQL
-- 3. Most expensive product
SELECT
	ProductName,
	MAX(Price) AS price
FROM Products;
```
4. Who is the youngest employee?
```SQL
-- 4. Youngest employee
SELECT 
	FirstName,
	LastName
FROM Employees
WHERE BirthDate = (SELECT MAX(BirthDate) FROM Employees);
```
5. Give the name of the 2nd and 3rd most expensive products.
```SQL
-- 5. 2nd and 3rd most expensive products
SELECT ProductName, Price
FROM Products
ORDER BY Price DESC
LIMIT 2 OFFSET 1;
```