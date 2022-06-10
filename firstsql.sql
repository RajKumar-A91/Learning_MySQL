use sql_store;
SHOW tables;
SELECT * FROM customers;
SHOW TABLES;
SELECT * 
FROM customers
-- these lines are comments in mySql that is the SQL engine not gonna execute these lines.
-- WHERE customer_id='1';
ORDER BY customer_id;
SELECT *
FROM customers
ORDER BY customer_id;
SELECT *
FROM customers
ORDER BY first_name;
-- This ORDER BY CLAUSE helps in displaying SELECTED DATA IN A SORTED FORMAT.
-- The cluases like 'from', 'order by', 'where', are optional.
SELECT 1,2;
-- The order of the clauses are really matters we always starts with select, from, where, order by or else we will get
-- syntax error.
-- line breaks, tabspaces are ignored when a mySql command is executed.

