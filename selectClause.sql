USE sql_store;
SELECT * -- we use '*' to display all tuples of the selected relation.
FROM customers;
SELECT first_name, last_name -- we can also specify the names of the colomns to get data
-- and the order of displaying data is going to same as mention above.
FROM customers;
SELECT last_name, first_name, points
FROM customers;
--                      ARITHMETIC OPERATOINS
-- we can also use arithematic opearations in the select statement;
SELECT last_name, first_name, points, points+10
FROM customers;
-- we can perform all kinds of arithematic operations.
-- and the decimal values can display upto 4 decimal places.
SELECT points, points+10*89, points/25, points%10
FROM customers;
-- the order of arithematic operations is * / %, + -.
-- we can use 'AS' keyword to fix a alias name to a newly created colomn.
-- we can give DESCRIMTIVE NAMES.
SELECT last_name,first_name AS RajKumar;
