--      REGEXP (regular expression)
-- These helps in searching for strings:
-- these allows us to search for more complex patters 
-- ex:
USE sql_store;
SELECT *
FROM customers
WHERE last_name LIKE '%Field%';

-- we can rewrite the above command using regexp
SELECT *
FROM customers
WHERE last_name REGEXP 'Field';
-- in REGEXP 'field' indicates the last_name which contains field any where in it
-- we use ^ (cap sign) to indicate begging of a string in REGEXP:
-- if we want customers whoes last_name starts with brush:
SELECT *
FROM customers
WHERE last_name REGEXP '^Brush';

-- $ indicates the last of a string
-- if we want customers whoes last_name ends with field:
SELECT *
FROM customers
WHERE last_name REGEXP 'Field$';

-- we can search for multiple words
-- if we want customers who has field or mac in their last name:
SELECT *
FROM customers
WHERE last_name REGEXP 'Field|Mac';
-- if we want customers who has field or mac or rose in their last_name:
SELECT *
FROM customers
WHERE last_name REGEXP 'Field|Mac|Rose';

-- if want customers whoes last_name starts with field or whoes last_name contains mac or rose:
SELECT *
FROM customers
WHERE last_name REGEXP '^Field|Mac|Rose';

-- if want customers whoes last_name ends with field or whoes last_name contains mac or rose:
SELECT *
FROM customers
WHERE last_name REGEXP 'Field$|Mac|Rose';

-- if want customers whoes last_name contains e
SELECT *
FROM customers
WHERE last_name REGEXP 'e';


-- if want customers whoes last_name contains e and before e their should be g or i or m
SELECT *
FROM customers
WHERE last_name REGEXP '[gim]e';
-- the above gives the last_name which contains ge or ie or me

-- if we want customers whoes last_name contains e and after e immediately their should be g or i or m
SELECT *
FROM customers
WHERE last_name REGEXP 'e[gim]';
-- the above gives the last_name which contains eg or ei or em.

-- we can also specify the range of characters in square braces using '-' minus sign:
-- if we want customers whoes last_name contains e and before their should any letter from a to z:
SELECT *
FROM customers
WHERE last_name REGEXP '[a-z]e';
-- The above commmand gives the last_name which contains like:
-- ae be ce de and so on up to ze:


-- if we want customers whoes last_name contains e and after e immediately thier should any letter from a to z:
SELECT *
FROM customers
WHERE last_name REGEXP 'e[a-z]';
-- The above command gives the last_name which contains like:
-- ea or eb or ec or ed and so on up to ez.


-- ^ indicates begging of the String.
-- $ indicates ending of the string.
-- [abcd] used to check whether for specific characters.
-- [-] used to specify a specific range.
-- we use | (pipe or vertical bar) to search for multiple words.


-- EXERCISE:
-- Get the customers whoes:
--   first_name is elka or ambur.
SELECT *
FROM customers
WHERE first_name REGEXP 'Elka|Ambur';

--   Last_name ends with ey or on:
SELECT *
FROM customers
WHERE last_name REGEXP 'ey$|on$';

--   Last_name starts with my or contains se:
SELECT *
FROM  customers
WHERE last_name REGEXP '^my|se';

--   Last_name contains b and followed by r or u:
SELECT *
FROM customers
WHERE last_name REGEXP 'b[ru]';

SELECT *
FROM customers
WHERE last_name REGEXP 'br|bu';
