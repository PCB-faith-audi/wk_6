USE salesDB;

-- Question 1
-- SQL query to get firstName,lastName,email, and officeCode of all employees.
SELECT 
	e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM employees AS e
INNER JOIN offices AS o
    ON e.officeCode = o.officeCode;

-- Question 2
-- SQL query to get the productName, productVendor, and productLine from the products table.
SELECT
	p.productName,
    p.productVendor,
    p.productLine
FROM products AS p
LEFT JOIN productlines AS pl
    ON p.productLine = pl.productLine;

-- Question 3
-- SQL query to retrieve the orderDate, shippedDate, status, and customerNumber for the first 10 orders.
SELECT
	o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers AS c
RIGHT JOIN orders AS o
    ON c.customerNumber = o.customerNumber
LIMIT 10;