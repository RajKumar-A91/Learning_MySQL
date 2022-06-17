--              INNER JOIN:
-- used to join two tables based on a specific condition
USE sql_store;
SELECT *
FROM orders
INNER JOIN customers ON
orders.customer_id=customers.customer_id;
-- when ever we are joining the orders table and customers table we are just telling that 
-- customer_id in orders table should be equal to customers_id in customers table.
-- In the above command we are joining the orders table with customers table



SELECT order_id, orders.customer_id, first_name, last_name, phone, address, city, state
FROM orders
INNER JOIN customers ON 
orders.customer_id=customers.customer_id
ORDER BY order_id;
-- If a column is present in both tables and if we want to retrieve that particular column 
-- Then we need to prefix it with the table name or else there will unambiguous error
-- it doesn't know from which table we need to take that particular column data.


-- we can set up alias names for the tables:
SELECT order_id, o.customer_id, first_name, last_name, phone, address, city, state 
FROM orders o
INNER JOIN customers c
ON o.customer_id=c.customer_id;
-- in The above command we set up orders table alias name as o
-- And we have set up customers table alias name as c.

-- EXERCISE:
SELECT *
FROM order_items oi
INNER JOIN products p
ON oi.product_id=p.product_id;
-- when we set an alias name for a table we ned to use that 
-- particular alias name every where.

SELECT order_id, oi.product_id, name, quantity, oi.unit_price
FROM order_items oi
INNER JOIN products p
ON oi.product_id=p.product_id;
-- INNER is optional
-- we can also write the above command 

SELECT order_id, oi.product_id, name, quantity, oi.unit_price
FROM order_items oi
JOIN products p
ON oi.product_id=p.product_id;
