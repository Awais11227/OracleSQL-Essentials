--- By Awais Manzoor 
-- Table Creation

-- Query No 01
-- Creating the DEPT Table with Default Value

CREATE TABLE  DEPT_N (
    DEPTNO NUMBER(4),
    DNAME VARCHAR2(14),
    LOC VARCHAR2(13),
    CREATE_DATE DATE DEFAULT SYSDATE
);

-- Query No 02
-- Describe the Table

DESC DEPT_N;



-- Query No 03
--  Defining Primary Key Constraint on EMPLOYEE_ID

-- column level
CREATE TABLE EMPLOYEES_a(
    EMPLOYEE_ID NUMBER(6) PRIMARY KEY,
    FIRST_NAME VARCHAR2(20),
    LAST_NAME VARCHAR2(25)
);

-- Table level 
CREATE TABLE EMPLOYEES_b (
    EMPLOYEE_ID NUMBER(6),
    FIRST_NAME VARCHAR2(20),
    LAST_NAME VARCHAR2(25),
    CONSTRAINT emp_pk PRIMARY KEY (EMPLOYEE_ID)
);

-- Query No 04
 -- Defining Foreign Key Constraint with ON DELETE CASCADE
 CREATE TABLE DEPARTMENTS (
    DEPARTMENT_ID NUMBER(4) PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR2(30)
);

CREATE TABLE EMPLOYEES (
    EMPLOYEE_ID NUMBER(6) PRIMARY KEY,
    LAST_NAME VARCHAR2(25),
    DEPARTMENT_ID NUMBER(4),
    CONSTRAINT emp_dept_fk FOREIGN KEY (DEPARTMENT_ID)
        REFERENCES DEPARTMENTS(DEPARTMENT_ID)
        ON DELETE CASCADE
);

-- Query 05
-- Defining CHECK Constraint on Salary
ALTER TABLE EMPLOYEES
ADD CONSTRAINT chk_salary CHECK (SALARY >= 0);


-- Query 06
-- Creating a Table Using a Subquery
CREATE TABLE DEPT80 AS
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID = 80;


DESC DEPT80;
