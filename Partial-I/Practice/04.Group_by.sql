-- take the quantity sum for the order 10,262
-- OrderID = 10262
SELECT
	OrderID,
	Quantity
FROM OrderDetails
WHERE OrderID = 10262;
-- sum
SELECT
	OrderID,
	SUM(Quantity)
FROM OrderDetails
WHERE OrderID = 10262;

-- And for each OrderID?
-- Grouping for id
SELECT
	OrderID AS id,
	SUM(Quantity) AS sum_quantity
FROM OrderDetails
GROUP BY OrderID
ORDER BY OrderID ASC;

-- GROUP BY + JOINS
-- Take the quantity sum for each customer
SELECT
	orders.CustomerID AS id_customer,
	SUM(details.Quantity) AS sum_quantity
FROM Orders AS orders
INNER JOIN OrderDetails AS details
USING(OrderID)
GROUP BY orders.CustomerID;

-- And the customer name??
SELECT
	customers.CustomerName,
	SUM(OrderDetails.Quantity) AS customer_quantity
FROM Orders
-- first join
INNER JOIN OrderDetails
USING(OrderID)
-- second join
INNER JOIN Customers
USING(CustomerID)
GROUP BY CustomerID
ORDER BY customer_quantity DESC;