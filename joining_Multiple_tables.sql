--                   JOINING THE MULTIPLE_TABLES:
-- Joining morethan two tables:
USE sql_store;
SELECT *
FROM orders o
JOIN customers c
ON o.customer_id=c.customer_id
JOIN order_statuses os
ON o.status=os.order_status_id;

SELECT o.order_id, 
o.order_date, 
c.first_name, 
c.last_name,
os.name AS status
FROM orders o
JOIN customers c
ON o.customer_id=c.customer_id
JOIN order_statuses os
ON o.status=os.order_status_id;

-- EXERCISE:
USE sql_invoicing;

SELECT *
FROM payments p
INNER JOIN clients c
ON p.client_id=c.client_id
INNER JOIN payment_methods pm
ON p.payment_method=pm.payment_method_id;


SELECT p.date,
       p.invoice_id,
       p.amount,
       c.name,
       pm.name
FROM payments p
INNER JOIN clients c
ON p.client_id=c.client_id
INNER JOIN payment_methods pm
ON p.payment_method=pm.payment_method_id;