-- QUESTION NO : 41
-- Retrieve all columns from the "employees" table where the department_id is 50.

SELECT * 
FROM employees
WHERE department_id = 50;

-- QUESTION NO : 42
-- Find the total salary for each department, grouped by department_id.

SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id;

-- QUESTION NO : 43
-- Retrieve the employee names and their job titles, but only for employees who earn more than 5000.

SELECT first_name, last_name, job_id
FROM employees
WHERE salary > 5000;

-- QUESTION NO : 44
-- Get the highest salary from the "employees" table.

SELECT MAX(salary) AS highest_salary
FROM employees;

-- QUESTION NO : 45
--  Update the salary of an employee with employee_id = 101 to 8000.

UPDATE employees
SET salary = 8000
WHERE employee_id = 101;
