-- Step_01 : Questions with Answers.
-- Step_02 : Crate a DAtabase with insurting tables.


-- Question No : 19
--   Retrieve first names beginning with “S”
SELECT first_name FROM EMPLOYEES
WHERE first_name LIKE 'S%';

--  Question No : 20
--  Retrieve last names where the 2nd character is “o”
SELECT last_name FROM EMPLOYEES
WHERE last_name LIKE '_o%';

--  Question No : 21
--  Retrieve last names and managers of employees with no manager
SELECT last_name, manager_id FROM EMPLOYEES
WHERE manager_id IS NULL;

--  Question No : 22
-- Employees with job_id containing “MAN” and salary = 10000
SELECT employee_id, last_name, job_id, salary FROM EMPLOYEES
WHERE job_id LIKE '%MAN%' AND salary = 10000;

--  Question No : 23
--  Employees whose job_id is NOT IT_PROG, ST_CLERK, or SA_REP
SELECT last_name, job_id FROM EMPLOYEES
WHERE job_id NOT IN ('IT_PROG', 'ST_CLERK', 'SA_REP');

--  Question No : 24
-- Sort by hire_date ASC
SELECT last_name, job_id, department_id, hire_date FROM EMPLOYEES
ORDER BY hire_date ASC;

--  Question No : 25
-- Sort by hire_date descending
SELECT last_name, job_id, department_id, hire_date FROM EMPLOYEES
ORDER BY hire_date DESC;
--  Question No : 26
-- Sort by third column (department_id) ASC
SELECT last_name, job_id, department_id, hire_date FROM EMPLOYEES
ORDER BY 3 ASC


















-- Create the database

CREATE DATABASE LabDB;
USE LabDB;

-- Create EMPLOYEES table
CREATE TABLE EMPLOYEES (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_id VARCHAR(20),
    salary DECIMAL(10,2),
    department_id INT,
    hire_date DATE,
    manager_id INT
);

-- Insert sample data
INSERT INTO EMPLOYEES VALUES
(1, 'Sarah', 'Stone', 'HR_MAN', 10000, 10, '2020-01-15', NULL),
(2, 'Samia', 'Moore', 'IT_PROG', 6000, 20, '2021-06-01', 1),
(3, 'anas', 'Brown', 'SA_REP', 7000, 30, '2019-11-23', 1),
(4, 'Alice', 'Thomas', 'ST_CLERK', 4500, 20, '2022-08-10', 2),
(5, 'Sam', 'Lopez', 'FIN_MAN', 10000, 40, '2018-03-05', NULL),
(6, 'Rabia', 'Olsen', 'IT_PROG', 6500, 20, '2020-12-01', 2),
(7, 'awais', 'Smith', 'SA_MAN', 10000, 30, '2023-01-01', 3);
