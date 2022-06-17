USE sql_store;
SELECT *
FROM customers c
JOIN orders o
ON c.customer_id=o.customer_id;

--           IMPLICIT JOIN
SELECT *
FROM customers c, orders o
WHERE c.customer_id=o.customer_id;
-- But it is always suggested to use JOINs only because if we forget WHERE clause then you
-- will get a cross join.

-- the cross join is:
SELECT *
FROM customers c, orders o;