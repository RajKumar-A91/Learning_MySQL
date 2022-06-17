-- if there is no primary key which can uniquely identify and row
-- then we can combine two columns and we can uniquely identify a row.
-- a composite primary key tables contains more than one primary key.
USE sql_store;
SELECT *
FROM order_items oi
JOIN order_item_notes oin
ON oi.order_id=oin.order_id
AND oi.product_id=oin.product_id;
-- the above command is compound condition.
