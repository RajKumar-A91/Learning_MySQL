USE sql_store;
SELECT *
FROM customers;

SELECT *
FROM customers 
WHERE phone IS NULL;

SELECT *
FROM customers
WHERE phone IS NOT NULL;


-- EXERCISE:
-- Get the orders that are not shipped.

SELECT *
FROM orders
WHERE shipper_id IS NULL;