--                     JOINING TABLES ACROSS DATABASE:
-- combining columns across tables across various DataBases:
USE sql_store;
SELECT *
FROM order_items oi
INNER JOIN sql_inventory.products p 
ON oi.product_id=p.product_id;
-- When joining tables across databases we need to prefix a table with its database.
-- We need to prefix a table with its database which is not the current database.

USE sql_inventory;
SELECT *
FROM sql_store.order_items oi
INNER JOIN products p
ON oi.product_id=p.product_id;

-- Above both commands are one and the same.