--                                             WHERE CLAUSE
-- where clause is used as filter in retreving data from colomn
-- in where clause we specify a condition
USE sql_store;
SELECT  *
FROM customers
WHERE points>3000;

-- comparision operators
-- > (greater than)
-- <(less than)
-- >=(greatere than or equalto)
-- <=(lesserthan or equalto)
-- !=(notequal)
-- <>(notequal)


-- when we are dealing textual data we need to enclose the value in singlequotes or doublequotes
SELECT *
FROM customers
WHERE state='VA';

SELECT *
FROM customers
WHERE state="VA";

-- for customers who doest not belong to virginia(VA)
SELECT *
FROM customers
WHERE state!='VA';

SELECT *
FROM customers
WHERE state <> 'VA';

-- IF we want customers data whoes DOB is greater than or equal to 1990-01-01
-- eventhough dates are not strings we use quotes
-- in sql language we enclose dates in quotes
-- yyyy-mm--dd
SELECT *
FROM customers
WHERE birth_date>='1990-01-01';


-- AND OR NOT operators:
-- The above operators helps in combining two or conditions in where clause.
-- orders placed this year:
SELECT *
FROM orders
WHERE order_date >='2019-01-01' AND order_date <= '2019-12-31';

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' OR 
      (points > 1000 AND state='VA');
-- order of AND OR NOT operators are :
-- 1.AND
-- 2.OR
-- 3.NOT

SELECT *
FROM customers
WHERE NOT(birth_date > '1990-01-01' OR points>1000);


-- The statement can also be written as

SELECT *
FROM customers
WHERE birth_date <= '1990-01-01' AND point <= 1000;