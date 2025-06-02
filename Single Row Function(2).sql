-- Single Row Function part(2)
-- By Awais Manzoor


-- Question No : 01
-- Display the last name and the number of weeks employed for all employees in department 90.
SELECT 
    last_name, 
    ROUND((SYSDATE - hire_date)/7, 1) AS weeks_employed
FROM 
    employees
WHERE 
    department_id = 90;
    

-- Question No : 02
-- Display employee number, hire date, number of months employed, six-month review date, first Friday after hire date
--  and the last day of the hire month for all employees who have been employed for fewer than 150 months.
SELECT 
    employee_id,
    hire_date,
    MONTHS_BETWEEN(SYSDATE, hire_date) AS months_employed,
    ADD_MONTHS(hire_date, 6) AS review_date,
    NEXT_DAY(hire_date, 'FRIDAY') AS first_friday,
    LAST_DAY(hire_date) AS end_of_month
FROM 
    employees
WHERE 
    MONTHS_BETWEEN(SYSDATE, hire_date) < 150;
    

-- Question No : 03
-- For all employees who started in 1997, display the employee number, hire date, and starting month using the ROUND and TRUNC functions.
SELECT 
    employee_id,
    hire_date,
    ROUND(hire_date, 'MONTH') AS rounded_month,
    TRUNC(hire_date, 'MONTH') AS truncated_month
FROM 
    employees
WHERE 
    TO_CHAR(hire_date, 'YYYY') = '1997';

-- Question No : 04
-- Use TO_CHAR to convert a datetime data type to a value of VARCHAR2 data type.
SELECT 
    employee_id,
    TO_CHAR(hire_date, 'DD-Mon-YYYY') AS formatted_hire_date
FROM 
    employees;

-- -- Question No : 05
-- Display employees hired before 1990, using the RR date format.
SELECT 
    employee_id,
    last_name,
    hire_date
FROM 
    employees
WHERE 
    hire_date < TO_DATE('01-JAN-90', 'DD-MON-RR');


