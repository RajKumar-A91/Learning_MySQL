-- from the orders_items tables get the all the items
-- for the order #6
-- where the total price is greater than 30
USE sql_store;
SELECT product_id
FROM order_items
WHERE quantity*unit_price>30;