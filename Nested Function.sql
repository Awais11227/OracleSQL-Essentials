-- Mastering Nested Functions in Oracle SQL
-- Using General Functions Effectively



-- Display the date of the next Friday that is six months from the hire date.
-- Format it as 'Friday, August 13th, 1999'. Order the results by hire date.
SELECT hire_date,
       TO_CHAR(NEXT_DAY(ADD_MONTHS(hire_date, 6), 'FRIDAY'), 'Day, Month DDth, YYYY') AS next_friday_after_6_months
FROM employees
ORDER BY hire_date;


-- Display the salaries of employees divided by 7 and rounded to two decimals 
-- using Danish number format (comma for decimal, period for thousands).
SELECT salary,
       TO_CHAR(ROUND(salary / 7, 2), '9G999G999D00', 'NLS_NUMERIC_CHARACTERS = '',.''') AS salary_danish_format
FROM employees;


-- Calculate the annual compensation of all employees, treating NULL commission_pct as 0.

SELECT first_name,
       salary,
       commission_pct,
       salary * 12 + NVL(commission_pct, 0) * salary * 12 AS annual_compensation
FROM employees;


--  If commission_pct exists, return 'SAL+COMM', else return 'SAL'.
SELECT first_name,
       commission_pct,
       NVL2(commission_pct, 'SAL+COMM', 'SAL') AS comp_type
FROM employees;

--  Compare the length of first and last names using NULLIF. If lengths are equal, returns NULL.
SELECT first_name,
       last_name,
       LENGTH(first_name) AS first_len,
       LENGTH(last_name) AS last_len,
       NULLIF(LENGTH(first_name), LENGTH(last_name)) AS length_difference
FROM employees;

