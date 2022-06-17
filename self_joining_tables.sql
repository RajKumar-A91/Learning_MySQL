-- In sql we can join a table with it self.
USE sql_hr;
SELECT *
FROM employees e
INNER JOIN employees m
ON e.reports_to=m.employee_id;


SELECT e.employee_id, e.first_name, e.last_name,
       e.reports_to,m.first_name AS Manager_firstName, m.last_name AS Manager_lastName
FROM employees e
INNER JOIN employees m
ON e.reports_to=m.employee_id;