--- By Awais Manzoor 
-- Table Creation Adding a Column

-- Query No 01
-- dd a column named JOB_ID to the DEPT80 table. The JOB_ID column will become the last column in the table.

ALTER TABLE DEPT80
ADD JOB_ID VARCHAR2(10);

-- Query No 02
-- Modifying a Column
-- modify a column named last_name of the DEPT80 table by increasing the width of the VARCHAR2 from 25 to 30.

ALTER TABLE DEPT80
MODIFY last_name VARCHAR2(30);

-- Query No 02
-- Dropping a Column
-- drop a column named JOB_ID from the DEPT80 table.

ALTER TABLE DEPT80
DROP COLUMN JOB_ID;


-- Dropping a Table
-- drop the DEPT80 table using the DROP TABLE statement.
DROP TABLE DEPT80;
