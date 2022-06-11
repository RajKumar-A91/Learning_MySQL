--                   BETWEEN operator:
USE SQL_STORE;
SELECT *
FROM customers
WHERE points>=1000 AND points<=3000;

-- The above command can be written using BETWEEN operator:
SELECT *
FROM customers
WHERE points BETWEEN 1000 AND 3000;
-- BETWEEN operator is inclusive it includes 1000 and 3000.

-- EXERCISE:
-- Return customers born 
-- between 1/1/1990 and 1/1/2000
-- BETWEEN operator is inclusive
SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';
