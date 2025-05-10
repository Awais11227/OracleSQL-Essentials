-- By Awais Manzoor
-- QUESTION NO : 35
--  Find the average salary by job title.
SELECT job_id, AVG(salary) AS average_salary
FROM employees
GROUP BY job_id;


-- QUESTION NO : 36
--  List the employees with their name, salary, and department.
SELECT first_name || ' ' || last_name AS full_name, salary, department_id
FROM employees
ORDER BY salary DESC;


-- QUESTION NO : 37
-- Count the number of employees in each department.
SELECT department_id, COUNT(*) AS total_employees
FROM employees
GROUP BY department_id
ORDER BY total_employees DESC;


-- QUESTION NO : 38
--  Find employees who were hired in the last 6 months.
SELECT employee_id, first_name, last_name, hire_date
FROM employees
WHERE hire_date >= ADD_MONTHS(SYSDATE, -6);

-- QUESTION NO : 39
--  Get the departments where the average salary is above 10,000.
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 10000;


-- QUESTION NO : 40
-- Find the total salary expense per department along with the number of employees in each.
SELECT department_id, 
       COUNT(employee_id) AS employee_count, 
       SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
ORDER BY total_salary DESC;

