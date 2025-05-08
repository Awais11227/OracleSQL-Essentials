
--  QUESTION NO : 27
--  Retrieve the last name and department number for employee number 176.
SELECT last_name, department_id
FROM employees
WHERE employee_id = 176;


--  QUESTION NO : 28
-- Retrieve the last name and salary for any employee whose salary is not in the range of 5,000 to 12,000.
SELECT last_name, salary
FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;



--  QUESTION NO : 29
-- Retrieve the last name, job ID, and hire date for employees with the last names of Matos or Taylor. Sort the resultant rows in ascending order by the hire date.
SELECT last_name, job_id, hire_date
FROM employees
WHERE last_name IN ('Matos', 'Taylor')
ORDER BY hire_date ASC;



--  QUESTION NO : 30
--  Retrieve the last name and department ID of all employees in departments 20 or 50 
-- in ascending alphabetical order by name.
SELECT last_name, department_id
FROM employees
WHERE department_id IN (20, 50)
ORDER BY last_name ASC;


--  QUESTION NO : 31
-- Retrieve the last name and job title of all employees whose department ID is unknown.
SELECT last_name, job_id
FROM employees
WHERE department_id IS NULL;


--  QUESTION NO : 32
-- Retrieve the last name, salary, and commission of all employees who earn commissions (i.e., the commission_pct is not NULL). Sort the resultant rows in descending order 
-- of salary and then commissions. Use the salary column’s numeric position in the ORDER BY clause.
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY 2 DESC, commission_pct DESC;


--  QUESTION NO : 33
--  Write a query that prompts the user for a manager ID and retrieves the employee ID, 
-- last name, salary, and department for that manager’s employees.  The query must also prompt the column based on which the resultant rows will be sorted in ascending order.

SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE manager_id = &manager_id
ORDER BY &order_column;

--  QUESTION NO : 34
-- Retrieve the last names of all employees who have both an “a” and an “e” somewhere in any order in their last name.
SELECT last_name
FROM employees
WHERE LOWER(last_name) LIKE '%a%' AND LOWER(last_name) LIKE '%e%';
