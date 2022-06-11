--    IN operator:
-- we can use OR AND operator to combine multiple expressions
USE sql_store;
SELECT *
FROM customers
WHERE state ='VA' OR state ='GA' OR state ='FL';

-- Instead of OR operator we can use IN operator to combine multiple expressions or conditions:
SELECT *
FROM customers
WHERE state IN ('VA','GA','FL');

-- Above both the commands give same result.

-- we can use IN operator with the NOT operator
-- ex: for the customers who do not live in VA GA FL 
SELECT *
FROM customers
WHERE state NOT IN ('VA','GA','FL');

-- EXECISE:
-- return the products with
-- quantity in stock equal to 49, 38, 72.
SELECT *
FROM products
WHERE quantity_in_stock IN (49, 38, 72);
