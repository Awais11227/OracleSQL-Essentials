
-- ===============================================
create database College;
USE College;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    last_name VARCHAR(50),
    job_id VARCHAR(20),
    department_id INT,
    salary DECIMAL(8,2),
    manager_id INT,
    hire_date DATE
);

INSERT INTO employees VALUES
(101, 'Whalen', 'AD_ASST', 90, 4400.00, 101, '2003-09-17'),
(102, 'King', 'AD_PRES', 90, 24000.00, NULL, '1996-02-17'),
(103, 'Smith', 'IT_PROG', 60, 3000.00, 100, '1998-06-20'),
(104, 'Vargas', 'SA_REP', 80, 2500.00, 101, '2000-01-30'),
(105, 'Hartstein', 'SA_MAN', 80, 13000.00, 201, '1996-02-17'),
(106, 'Jones', 'HR_REP', 40, 3500.00, 201, '2001-03-14');

-- Question No: 11
-- Employees with department_id = 90
SELECT employee_id, last_name, job_id, department_id
FROM employees
WHERE department_id = 90;

--  Question No: 12
--  Employees with last name 'Whalen'
SELECT last_name, job_id, department_id
FROM employees
WHERE last_name = 'Whalen';

 -- Question No: 13
--  Employees hired on '1996-02-17'
SELECT last_name
FROM employees
WHERE hire_date = '1996-02-17';

--  Question No: 14
-- Q12: Employees with salary <= 3000
SELECT last_name, salary
FROM employees
WHERE salary <= 3000;

--  Question No: 15
-- Q13a: Employees with salary between 2500 and 3500
SELECT last_name, salary
FROM employees
WHERE salary BETWEEN 2500 AND 3500;

--  Question No: 16
--  Employees with last name between 'King' AND 'Smith'
SELECT last_name
FROM employees
WHERE last_name BETWEEN 'King' AND 'Smith';


--  Question No: 17
--  Employees with manager_id in (100, 101, 201)
SELECT employee_id, last_name, salary, manager_id
FROM employees
WHERE manager_id IN (100, 101, 201);


--  Question No: 18
--  Employees with last_name in ('Hartstein', 'Vargas')
SELECT last_name, salary, manager_id
FROM employees
WHERE last_name IN ('Hartstein', 'Vargas');
