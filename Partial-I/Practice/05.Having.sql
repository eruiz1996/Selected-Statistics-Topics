-- HAVING clause
-- list the number of customers in each country
SELECT
	Country,
	COUNT(CustomerID) AS num_custom
FROM Customers
GROUP BY Country;

-- order in descending order
SELECT
	Country,
	COUNT(CustomerID) AS num_custom
FROM Customers
GROUP BY Country
ORDER BY num_custom DESC;

-- take only the countries with more than 5 customers
SELECT
	Country,
	COUNT(CustomerID) AS num_custom
FROM Customers
WHERE num_custom > 5
GROUP BY Country
ORDER BY num_custom DESC;
-- error by use WHERE with Aggregate functions
-- go to execution order

-- using HAVING
SELECT
	Country,
	COUNT(CustomerID) AS num_custom
FROM Customers
GROUP BY Country
HAVING num_custom > 5
ORDER BY num_custom DESC;