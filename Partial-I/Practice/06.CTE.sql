-- Common Table Expressions

/*
Find the Top 5 Customers by Order Count
Write a query to find the top 5 customers who have placed the most orders. 
Include the customer name and the total number of orders they placed.
*/
SELECT
	c.CustomerName AS customer_name,
	COUNT(o.OrderDetailID) AS total_orders
FROM Customers AS c
INNER JOIN Orders
USING(CustomerID)
INNER JOIN OrderDetails AS o
USING(OrderID)
GROUP BY c.CustomerName
ORDER BY total_orders DESC
LIMIT 5;

/*
From the last table identify the ones 
wich are in the range of 20-25 orders. 
*/
WITH top_5 AS
(
	SELECT
		c.CustomerName as customer_name,
		COUNT(o.OrderDetailID) AS total_orders
	FROM Customers AS c
	INNER JOIN Orders
	USING(CustomerID)
	INNER JOIN OrderDetails AS o
	USING(OrderID)
	GROUP BY c.CustomerName
	ORDER BY total_orders DESC
	LIMIT 5
)
SELECT *
FROM top_5
WHERE total_orders BETWEEN 20 AND 25;