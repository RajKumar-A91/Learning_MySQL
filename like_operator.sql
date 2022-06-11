--                 LIKE Operator:
-- with LIKE operator we can retrieve rows that match specific string pattern:
USE sql_store;
SELECT *
FROM customers
WHERE last_name LIKE 'b%';
-- 'b%' indicates last_name starts with b whether small or capital and % indicates any no.of characters.


-- if want a customer whoes last_name starts with Brush then
SELECT *
FROM customers
WHERE last_name LIKE 'Brush%';
-- 'Brush%' indicates last_name starts with Brush and % indicates after Brush it can have any no.of characters.


SELECT *
FROM customers
WHERE last_name LIKE '%b%';
-- the above '%b%' indicates that all the last_name which contains b any where
-- that is the b can be at begging or in the end or in the middle.

-- if want all the customers whoes last name ends with y:
SELECT *
FROM customers
WHERE last_name LIKE "%y";

-- we can use _ for characters at specified place
-- for customers whoes last name sixth character is y we place 5 underscores(_) infront of y:
SELECT *
FROM customers
WHERE last_name LIKE '_____y';

-- if we want customers whoes last name 1st character is b and 6th character is y:
SELECT *
FROM customers
WHERE last_name LIKE 'b____y';


-- % indicates any no.of characters
-- _ indicates singel character


-- EXERCISE:
-- get the customers whoes
-- address contains Trail or Avenue
-- phone number ends with 9:
SELECT *
FROM customers
WHERE (address LIKE '%Trail%' OR address LIKE '%Avenue%');

SELECT *
FROM customers
WHERE phone LIKE '%9';


-- we can also use NOT operator with LIKE operator 
-- if we want customers whoes phone number not ends with 9 then:
SELECT *
FROM customers
WHERE phone NOT LIKE '%9';
