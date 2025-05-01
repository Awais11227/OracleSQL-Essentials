-- Step 1: Create Database and Tables
--  Step 2: SQL Queries Implementation
CREATE DATABASE company_db;
USE company_db;
CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(50),
    location_id INT
);
INSERT INTO departments VALUES
(10, 'HR', 100),
(20, 'Finance', 200),
(30, 'Sales', 300);
CREATE TABLE employees (
    employee_id INT,
    last_name VARCHAR(50),
    salary DECIMAL(10,2),
    commission_pct DECIMAL(4,2)
);

-- QUESTION NO.1
 -- Select all columns and rows from departments:
 SELECT * FROM departments;

-- QUESTION NO.2
-- Select only department_id and location_id:
SELECT department_id, location_id FROM departments;

-- QUESTION NO.3
 -- Select last_name, salary, and salary + 300:
 SELECT last_name, salary, salary + 300 AS increased_salary FROM employees;

-- QUESTION NO.4
-- Select last_name and calculate annual commission:
SELECT last_name, salary * commission_pct * 12 AS annual_commission FROM employees;

-- QUESTION NO.5
--  Using column aliases:
SELECT last_name AS name, commission_pct AS comm FROM employees;




