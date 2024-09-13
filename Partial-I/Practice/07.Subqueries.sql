-- Subqueries Review
-- Subqueries in the WHERE Clause
/*
Problem: Give the products which are less expensive than the half of the maximum price
*/
--------------------------------------------------------------------------------------
-- Solution 
-- Step one: find the maximum price divided by 2
SELECT MAX(Price)/2
FROM Products;
-- Step two: use the previous query as a condition in the WHERE clause
SELECT
	ProductName,
	Price
FROM
	Products
WHERE
	-- Subquerie
	Price < (SELECT MAX(Price)/2 FROM Products)
ORDER BY 
	Price DESC;
-----------------------------------------------------------------------------

-- Subqueries in the FROM
/*
Problem: Give the total of quantity by CustomerName and ProductName
*/
-- Solution 
-- Step one: group Quantity by CustomerName and OrderID
SELECT
	c.CustomerName,
	o.ProductID,
	SUM(o.Quantity) AS total_quantity
FROM Customers AS c
INNER JOIN Orders
USING(CustomerID)
INNER JOIN OrderDetails AS o
USING(OrderID)
GROUP BY c.CustomerName, o.ProductID
ORDER BY c.CustomerID;
-- Step two: use the previous result as a subtable to create a new join
SELECT
	sub_table.CustomerName,
	p.ProductName,
	sub_table.total_quantity
FROM
(
	-- subquerie
	SELECT
		c.CustomerName,
		o.ProductID,
		SUM(o.Quantity) AS total_quantity
	FROM Customers AS c
	INNER JOIN Orders
	USING(CustomerID)
	INNER JOIN OrderDetails AS o
	USING(OrderID)
	GROUP BY c.CustomerName, o.ProductID
	ORDER BY c.CustomerID
) AS sub_table
INNER JOIN Products AS p
USING(ProductID);