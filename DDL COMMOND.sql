CREATE DATABASE DDL;-- CEARE DATA BASE
SHOW DATABASES; -- FOR VIEWING ALL DATABSE WHICH ARE THERE IN MY SCEMAS
USE DDL;  -- TO SELECT PRESENT DATA BASE
SELECT DATABASE(); -- TO KNOW WHICH DATABASE WE ARE
DROP DATABASE BESENT; -- TO REMOVE DATA BASE

-- DDL COMMONDS ( DATA DEFINATION LANGUAGE ) WHICH IS HELP TO DEFINE AND MODIFY DATA BASE OBJECTS THOSE ARE TABLE,VIEW,INDEX AND SCHEMAS 

-- CREATE : IT IS HELP TO CREATR NEW DATABASE OBJECT LIEE TABLES,DATABASE,SCHEMAS 
CREATE TABLE EMPLOYEE(
EMPLOYEEID INT PRIMARY KEY,
NAME VARCHAR(100),
DEPARTMENT VARCHAR(50)
);

-- ALTER : USE TO MODIFY STRUCTURE OF AN EXSTING DATABASE OBJECT SUCH AS ADDING DELETING AND MODIFYING COLUMNS IN TABLE
ALTER TABLE EMPLOYEE ADD SALARY DECIMAL(10,2);
ALTER TABLE EMPLOYEE DROP COLUMN NAME;


-- DROP : USE TO DELETE DATABASE OBJECT SUCH AS TABLES,VIEWS, OR INDEXS(DELETE THE STRUCTURE AND RECORDS)
CREATE TABLE DEMO (
NAME VARCHAR(100),
MAIL VARCHAR(30)
);
DROP TABLE DEMO;

-- TRUNCATE :USE TO REMOVE ALL RECORDS FROM A TABLE WHILE KEEPING STRUCTURE OF TABLE
TRUNCATE TABLE DEMO;


-- RENAME: USE TO RENAME A DATABASE OBJECTS SUCH AS TABLE OR COLUMN
RENAME TABLE EMPLOYEE TO STAFF;

-- COMMENT: USE TO ADD OR MODIFY COMMENTS TO DATA BASE OBJECTS FOR DOCUMENT PURPOSE 
ALTER TABLE STAFF COMMENT = 'TABLE STORES EMPLOYEES DETAILS';


-- -------------------  SCENARIO BASE PROBLEMS AND SALUTION ------------------------------------------------------------------------
-- A reatail shop want to maintain it's customer datails table, the table should include customer id, name, email and phone number

CREATE TABLE CUSTOMER_DETAILS(
CUSTOMERID INT PRIMARY KEY,
NAME VARCHAR(50),
EMAIL VARCHAR(60),
PHONE INT 
);

-- RETAIL STORE WANT TO ADD ADDRESS OF CUSTOMER TO CUSTOMER_DETAILS TABLE
ALTER TABLE CUSTOMER_DETAILS ADD ADDRESS VARCHAR(50);

-- RETAIL STORE WANT TO REMOVE EMAIL FROM TABLE
ALTER TABLE CUSTOMER_DETAILS DROP COLUMN EMAIL;


-- RETAIL STORE WANT TO RENAME TABLE NAME 
RENAME TABLE CUSTOMER_DETAILS TO CLIENT_DETAILS;


-- RETAIL STORE WANT TO MODIFY THEIR NAME COLUMN PRESNTLY IT ONLY ALLOWS 50 VALUE IT NEED TO CHANGE 80 CHAR
ALTER TABLE CLIENT_DETAILS MODIFY NAME VARCHAR(80);

-- THE STORE NOT ALLOW NULL VALUE TO PHONE 
ALTER TABLE CLIENT_DETAILS MODIFY PHONE INT NOT NULL;

-- CREATING COMPOSITION KEY
-- THE STORE WANT TO CREATE ODERS TABLE WHERE THE COMBINATION OF ORDERID AND PRODUCT ID SERVES AS THE PRIMARY KEY
CREATE TABLE ORDERS(
ORDERID INT,
PRODUCTID INT,
NAME VARCHAR(90),
PRIMARY KEY (ORDERID, PRODUCTID)
);


