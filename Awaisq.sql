
-- Awais Manzoor 

-- QUESTION NO : 01
-- Employee Salary with 15.5% Increase
SELECT 
    employee_id, 
    last_name, 
    salary, 
    ROUND(salary * 1.155) AS "New Salary"
FROM 
    employees;


-- QUESTION NO : 02
-- Last Name Formatting and Length for 'J', 'A', or 'M'
SELECT 
    INITCAP(last_name) AS "Upper Last Name",
    LENGTH(last_name) AS "Name Length"
FROM 
    employees
WHERE 
    UPPER(SUBSTR(last_name, 1, 1)) IN ('J', 'A', 'M')
ORDER BY 
    last_name;
    
-- User Input
SELECT 
    INITCAP(last_name) AS "Upper Last Name",
    LENGTH(last_name) AS "Name Length"
FROM 
    employees
WHERE 
    UPPER(SUBSTR(last_name, 1, 1)) = UPPER('&Start_Letter')
ORDER BY 
    last_name;

-- QUESTION NO : 03
-- Months Worked by Each Employee
SELECT 
    last_name,
    CEIL(MONTHS_BETWEEN(SYSDATE, hire_date)) AS "MONTHS_WORKED"
FROM 
    employees
ORDER BY 
    "MONTHS_WORKED";

-- QUESTION NO : 04
--  Commission Display
SELECT 
    last_name,
    NVL(TO_CHAR(commission_pct), 'No Commission') AS "COMM"
FROM 
    employees;

-- QUESTION NO : 05
--  Countries Without Departments
SELECT 
    country_id, 
    country_name
FROM 
    countries
MINUS
SELECT 
    DISTINCT c.country_id, 
    c.country_name
FROM 
    countries c
JOIN 
    locations l ON c.country_id = l.country_id
JOIN 
    departments d ON l.location_id = d.location_id;



-- QUESTION NO : 06
--  List All Employees and Departments 
SELECT 
    e.last_name, 
    e.department_id AS "Emp_Dept_ID", 
    d.department_id AS "Dept_ID", 
    d.department_name
FROM 
    employees e
FULL OUTER JOIN 
    departments d ON e.department_id = d.department_id;

