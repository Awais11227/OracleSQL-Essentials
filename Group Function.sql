-- Using the Group Functions



-- Question No : 01
-- Display the average, highest, lowest, and sum of monthly salaries for all sales representatives.
SELECT 
    AVG(salary) AS average_salary,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary,
    SUM(salary) AS total_salary
FROM employees
WHERE job_id = 'SA_REP';


-- Question No : 02
-- Display the number of employees in department 50.
SELECT COUNT(*) AS total_employees
FROM employees
WHERE department_id = 50;




-- Question No : 03
-- Display the number of employees in department 50 who can earn a commission.
SELECT COUNT(commission_pct) AS employees_with_commission
FROM employees
WHERE department_id = 50;


-- Question No : 04
-- Display the number of distinct department values in the EMPLOYEES table.
SELECT COUNT(DISTINCT department_id) AS distinct_departments
FROM employees;


-- Question No : 05
-- Calculate average commission for employees who receive commission.
SELECT AVG(commission_pct) AS avg_commission
FROM employees;


-- Question No : 06
-- Calculate average commission for all employees, treating nulls as 0.
SELECT AVG(NVL(commission_pct, 0)) AS avg_commission_including_nulls
FROM employees;
