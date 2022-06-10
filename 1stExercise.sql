-- we need to return all products 
-- 3 colomns
-- name 
-- unit price
-- new price as unitprice*1.1
USE sql_store;
SELECT name,unit_price,(unit_price*1.1) AS new_price
FROM products;