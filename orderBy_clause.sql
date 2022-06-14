--                  ORDER BY:
-- This order by clause helps in ordering the output data in a specified colomn.

USE sql_store;
-- By default it orders the data in customer_id colomn
-- Because it is primary key.
SELECT *
FROM customers;

-- if we want to order by in the first_name format we need to mention the first_name colomn along with the 
-- ORDER BY clause.
SELECT *
FROM customers
ORDER BY first_name;




-- if we want to order by last_name:
SELECT *
FROM customers
ORDER BY last_name;

-- if we want to order by address:
SELECT *
FROM customers
ORDER BY address;


-- by default ORDER BY clause sorts in ascending order.

-- If we want to SORT IN DESCENDING order
-- then we need to mention DESC keyword.

SELECT *
FROM customers
ORDER BY first_name DESC;

SELECT *
FROM customers
ORDER BY last_name DESC;

-- if we want to sort based on state and after that based on first_name:
SELECT *
FROM customers
ORDER BY state, first_name;
-- if both states are same then it goes for checking first_name.


-- if we want to sort firstly on state based in descending order 
-- and then after on first_name based on ascending order:
SELECT *
FROM customers
ORDER BY STATE DESC, first_name;



-- if we want to sort firstly on state based in ascending ordre alter
-- and then afer on first_name based on descending order:
SELECT *
FROM customers
ORDER BY state, first_name DESC;


-- if we want to sort both in descending order then:
SELECT *
FROM customers
ORDER BY state DESC, first_name DESC;


SELECT 10 AS points, first_name, last_name
FROM customers
ORDER BY first_name;


SELECT first_name, last_name
FROM customers
ORDER BY 1, 2;
-- The above command ORDER BY 1 indicates based on first_name
-- And ORDER BY 2 indicates based on last_name


-- Exercise:
SELECT *
FROM order_items
WHERE order_id=2
ORDER BY quantity*unit_price DESC;