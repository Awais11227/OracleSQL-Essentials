-- =============================================


-- By:              Awais Manzoor


-- =============================================

CREATE DATABASE mydatabase;

USE mydatabase;

CREATE TABLE departments (
    department_id    INT PRIMARY KEY,
    department_name  VARCHAR(30) NOT NULL,
    manager_id       INT,
    location_id      INT
);


CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30) NOT NULL,
    job_id VARCHAR(10) NOT NULL,
    hire_date DATE NOT NULL,
    salary DECIMAL(8,2)
);


INSERT INTO employees (employee_id, first_name, last_name, job_id, hire_date, salary)
VALUES (201, 'Ahmad', 'Khan', 'IT_PROG', '2020-06-10', 5500.00),
       (202, 'Fatima', 'Ali', 'HR_REP', '2021-09-15', 4800.00),
       (203, 'Omar', 'Hassan', 'IT_PROG', '2019-04-20', 6200.00),
       (204, 'Ayesha', 'Rashid', 'SA_MAN', '2022-12-05', 7100.00),
       (205, 'Bilal', 'Mehmood', 'SA_REP', '2023-08-01', 5700.00);

SELECT * FROM employees;

-- QUESTION NO: 01
--  Display last_name, job_id, hire_date renamed WITH  STARTDATE, and employee_id, ordered by employee_id
SELECT last_name, job_id, hire_date AS STARTDATE, employee_id 
FROM employees
ORDER BY employee_id;

-- QUESTION NO : 02 
-- Display last_name concatenated with job_id separated by (", ") , with column names Employee , Title
SELECT last_name || ', ' || job_id AS Employee, job_id AS Title
FROM employees;

-- QUESTION NO :3
-- Display the structure of the departments table

DESC departments;

-- QUESTION NO : 4
-- Retrieve only distinct job_id values from the employees table

SELECT DISTINCT job_id
FROM employees;

-- QUESTION NO : 5
-- Show first_name and last_name concatenated with Name

SELECT first_name || ' ' || last_name AS Name
FROM employees;

-- QUESTION NO:6
-- Display first_name and the annual salary of employees

SELECT first_name, salary * 12 AS annual_salary
FROM employees;
