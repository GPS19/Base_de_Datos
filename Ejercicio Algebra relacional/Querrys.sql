
-- USE classicmodels; 

-- Pregunta 2

-- SELECT CONCAT(customers.contactFirstName, " ", customers.contactLastName) AS "Full name", "customer" AS "contact type" FROM customers 
-- UNION 
-- SELECT CONCAT(employees.firstName, " ", employees.lastName), "employee" FROM employees; 


-- Pregunta 3

-- SELECT customers.customerName AS "Customer Name" FROM customers
-- WHERE customers.salesRepEmployeeNumber is null
-- ORDER BY customers.customerName; 


-- Pregunta 4


-- SELECT offices.city AS "City", customers.customerName AS "Customer Name"  FROM customers
-- INNER JOIN employees
-- ON customers.salesRepEmployeeNumber = employees.employeeNumber
-- INNER JOIN offices
-- using(officeCode)
-- ORDER BY offices.city; 


-- Pregunta 5 

-- SELECT offices.city AS "City", COUNT(customers.customerName) AS "COUNT" FROM customers
-- INNER JOIN employees
-- ON customers.salesRepEmployeeNumber = employees.employeeNumber
-- INNER JOIN offices
-- using(officeCode)
-- GROUP BY offices.city
-- ORDER BY offices.city; 

-- Pregunta 6

-- SELECT products.productName AS "Product Name", AVG(orderdetails.priceEach * orderdetails.quantityOrdered) AS "Average" FROM products 
-- INNER JOIN orderdetails
-- using(productCode)
-- INNER JOIN orders
-- using(orderNumber) -- Contamos las ordenes que solo estan marcadas como Shipped porque hay ordenes Canceladas
-- WHERE orders.status = "Shipped" and products.productName LIKE "%Harley%" 
-- GROUP BY productName; 


-- Pregunta 7


-- SELECT CONCAT(employees.LastName, " ", employees.firstName) AS "Useless Employee", employees.employeeNumber AS "Useless Employee ID", customers.customerNumber AS "Customer Number" FROM employees
-- LEFT JOIN customers
-- ON employees.employeeNumber = customers.salesRepEmployeeNumber
-- WHERE customers.customerNumber is null; 


-- Pregunta 8

-- SELECT employees.lastName AS "Last Name", employees.firstName AS "First Name", customers.customerName AS "Customer Name", payments.checkNumber AS "Check Number", payments.amount AS "Amount" FROM employees
-- INNER JOIN customers
-- ON employees.employeeNumber = customers.salesRepEmployeeNumber
-- INNER JOIN orders
-- using(customerNumber)
-- LEFT JOIN payments
-- using(customerNumber);  -> MAAAAAL


-- WHERE customers.salesRepEmployeeNumber is not null; 
