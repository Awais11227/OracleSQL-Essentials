-- Using Single Row Functions to Customize Output




-- 1. Display: The job id for 'LAST_NAME' is job_id 
-- (last_name in upper case, job_id in lower case)
SELECT 'The job id for ' || UPPER(last_name) || ' is ' || LOWER(job_id) AS "Employee Job Info"
FROM employees;

-- 2. Display employee number, name, and department number for employee Higgins
SELECT employee_id, first_name || ' ' || last_name AS full_name, department_id
FROM employees
WHERE last_name = 'Higgins';

-- 3. Display concatenated name, length of last name, position of 'a' 
-- for employees with 'REP' starting at 4th position in job ID
SELECT 
  first_name || ' ' || last_name AS full_name,
  LENGTH(last_name) AS last_name_length,
  INSTR(last_name, 'a') AS position_of_a
FROM employees
WHERE INSTR(job_id, 'REP', 4) > 0;

-- 4. For Sales Representatives: remainder of salary divided by 5000
SELECT first_name, last_name, salary, MOD(salary, 5000) AS remainder
FROM employees
WHERE job_id = 'SA_REP';

-- 5. Demonstrate TRUNC and ROUND functions on a sample number
SELECT 
  123.456 AS original_number,
  TRUNC(123.456, 2) AS trunc_value,
  ROUND(123.456, 2) AS round_value
FROM dual;

