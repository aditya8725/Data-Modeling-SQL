CREATE DATABASE EMPLOYEE;

USE EMPLOYEE;

CREATE TABLE EMP(Empid tinyint, Name varchar(20),Marks tinyint);

drop table emp;
SELECT * FROM EMP;

INSERT INTO EMP VALUES(1,'Aditya',99); 
INSERT INTO EMP VALUES(2,'Akash',97); 
INSERT INTO EMP VALUEs(3,'Deepika',88);

INSERT INTO EMP(Empid,NAME,Marks) VALUES(4,'SHIVAM',91); 
INSERT INTO EMP(Empid,NAME,Marks) VALUES(5,'VINAY',93); 
INSERT INTO EMP(Empid,NAME,Marks) VALUES(6,'CHAYAN',81);

INSERT INTO EMP VALUES(7,'Jack',87),(8,'Shiv',85),(9,'Pramod',82),(10,'Sahil',84);

SELECT * FROM EMP;

--COMPARISONS 
SELECT * FROM EMP; 
SELECT * FROM EMP WHERE Marks = 91; 
SELECT * FROM EMP WHERE Marks < 91; 
SELECT * FROM EMP WHERE Marks > 91; 
SELECT * FROM EMP WHERE Marks >= 81; 
SELECT * FROM EMP WHERE Marks <> 99; 
SELECT * FROM EMP WHERE Marks between 91 and 97; 
SELECT * FROM EMP WHERE Marks not between 91 and 99; 
SELECT * FROM EMP WHERE Marks in(91,99,93); 
SELECT * FROM EMP WHERE Marks not in(91,99,93);

INSERT INTO EMP(Empid,NAME) VALUES(11,'ROBIN'); 
SELECT * FROM EMP; 
SELECT * FROM EMP WHERE Marks is null; 
SELECT * FROM EMP WHERE Marks is not null;

--Like Operator 
SELECT * FROM EMP WHERE Name like '%A'; 
SELECT * FROM EMP WHERE Name like 'A%'; 
SELECT * FROM EMP WHERE Name like '%A%'; 
SELECT * FROM EMP WHERE Name like 'Ad%'; 
SELECT * FROM EMP WHERE Name like '%'; 
SELECT * FROM EMP WHERE Name like 'A%itya';

SELECT * FROM EMP WHERE Name like 'A_itya';

SELECT * FROM EMP WHERE Name like 'a[dxy]itya';
SELECT * FROM EMP WHERE Name like 'a[^xyz]itya';

--Logical Operator 
SELECT * FROM EMP WHERE Name like 'A%' and Marks>90; 
SELECT * FROM EMP WHERE Name like 'A%' or Marks>90;

SELECT * FROM EMP WHERE not Marks>90;

--Arithmetic Operator 
SELECT * FROM EMP WHERE Marks>=35; 
SELECT * FROM EMP WHERE Marks+1>35;

SELECT Marks , Marks+1 FROM EMP; 
SELECT Marks , Marks+1 AS AddedCol FROM EMP; 
SELECT Marks , Marks*2 AS Multipliedcol FROM EMP;

SELECT * FROM EMP;

--Order BY 
SELECT * FROM EMP order by Empid; 
SELECT * FROM EMP order by Empid desc;

SELECT * FROM EMP order by Marks;

--Update 
UPDATE EMP SET MARKS = 79 WHERE Empid = 11; 
SELECT * FROM EMP;

--Delete 
INSERT INTO EMP VALUES(12,'VINASH',60); 
SELECT * FROM EMP; 
DELETE EMP WHERE Empid = 12; 
SELECT * FROM EMP;

--ALTER 
ALTER TABLE EMP ADD Salary INT; 
--INSERT INTO EMP(Salary) Values(50000) 
UPDATE EMP SET Salary = 50000 where Empid=1; 
UPDATE EMP SET Salary = 15000 where Empid=2; 
UPDATE EMP SET Salary = 3000 where Empid=3; 
UPDATE EMP SET Salary = 1000 where Empid=4; 
UPDATE EMP SET Salary = 2000 where Empid=5; 
UPDATE EMP SET Salary = 7000 where Empid=6; 
UPDATE EMP SET Salary = 80000 where Empid=7; 
UPDATE EMP SET Salary = 10000 where Empid=8; 
UPDATE EMP SET Salary = 90000 where Empid=9; 
UPDATE EMP SET Salary = 60000 where Empid=10; 
UPDATE EMP SET Salary = 100 where Empid=11;



-- PK AND FK
-- ==============

--PRIMARY KEY AND FOREIGN KEY

CREATE TABLE EMP1(RollNo tinyint Primary Key, Name varchar(20)) ;
INSERT INTO EMP1 VALUES
(101,'ADITYA'),
(102,'SHIVA'),
(103,'VIKASH');
INSERT INTO EMP1 VALUES(104,'AKASH');

SELECT * FROM EMP1;

CREATE TABLE SALES(RollNo tinyint, items varchar(20),Price int, foreign key(RollNo) References EMP1(RollNo)on delete cascade);
INSERT INTO SALES VALUES
(101,'IDLI',20),
(101,'DOSA',60),
(102,'VADA',30),
(103,'PARATHA',90);
INSERT INTO SALES VALUES(104,'PURI',40);

SELECT * FROM SALES;


Delete from emp1 where RollNo=104;

SELECT * FROM EMP1;
SELECT * FROM SALES;



CREATE TABLE employeeRecord(
RollNoo int primary key,
Name varchar(20),
BirthDate DATE,
HireDate DATE,
LastReviewDate DATETIME
);


Insert into employeeRecord values
(1,'Aditya','2001-11-29','2010-10-24','2023-01-10 9:00:00'),
(2,'Shiv','1999-03-29','2015-07-07','2023-01-31 11:45:00'),
(3,'Ravi','1995-10-20','2011-11-25','2023-01-09 10:30:00');

select * from employeeRecord;

select name,getdate() as date from employeeRecord;

select Name,HireDate, dateadd(month,5,HireDate) as Addedate from employeeRecord;

select Name,HireDate, datediff(year,HireDate,getdate()) as working_years from employeeRecord;

select name,HireDate,DATEPART(month,HireDate) as month_Hired from employeeRecord;



---------------------------------------------------------------------------------------------------------------------
STRING
========
-- create
CREATE TABLE sample (
  Rollno tinyint,
  name varchar(20),
  comment varchar(20)
);

Insert into sample values
(1,'Aditya','Helloo'),
(2,'Sahil','SQL Server'),
(3,'Raju','String Fun'),
(4,'Mohit','Java');

select * from sample;

select comment,LEN(comment) as comment_Len from sample;
select comment,UPPER(comment) as upperletter from sample;
select comment,LOWER(comment) as lowerletter from sample;
select replace(comment,'Server','data') from sample;
select comment,substring(comment,3,5) from sample;



-- FUNCTIONS
-- ============

CREATE TABLE PERFORMANCE(RollNo tinyint, Name Varchar(20),Marks float);

Insert into PERFORMANCE values(1,'Akash',10.5);
Insert into PERFORMANCE values(2,'Smit',23.5);
Insert into PERFORMANCE values(3,'Aditya',24.1);
Insert into PERFORMANCE values(4,'Vikash',3.6);
Insert into PERFORMANCE(RollNo,Name) values(5,'Deepika');

select * from PERFORMANCE;

select avg(Marks) as AverageMarks from PERFORMANCE;
select sum(Marks) as ToalMarks from PERFORMANCE;
select min(Marks) as MinimumMarks from PERFORMANCE;
select max(Marks) as MaximumMarks from PERFORMANCE;
select count(Marks) as countOFMarks from PERFORMANCE;
select Marks,round(Marks,0) as RoundOffMarks from PERFORMANCE;
select Marks,floor(Marks) as floorMarks from PERFORMANCE;
select Marks,ceiling(Marks) as ceilMarks from PERFORMANCE;

Insert into PERFORMANCE values(6,'Kohli',-18.5);
select * from PERFORMANCE;

select Marks,ABS(Marks) as absMarks from PERFORMANCE;




-- GROUP BY
-- ================

/*
CREATE TABLE SALES(salesid int primary key, country varchar(15), amount float);
INSERT INTO SALES VALUES
(1,'USA',500.00),
(2,'IND',1200.00),
(3,'CANADA',700.00),
(4,'UK',900.00),
(5,'IND',1500.00);

SELECT * FROM SALES;

SELECT COUNTRY, COUNT(COUNTRY) AS CountHistory FROM SALES GROUP BY country;

SELECT COUNTRY FROM SALES GROUP BY COUNTRY HAVING AVG(AMOUNT)<1000;

SELECT COUNTRY , AVG(AMOUNT) FROM SALES GROUP BY COUNTRY;

SELECT COUNTRY, SUM(AMOUNT) FROM SALES GROUP BY COUNTRY;

SELECT COUNTRY ,COUNT(*) AS CNT FROM SALES GROUP BY COUNTRY;

*/
CREATE TABLE EMP1(Department varchar(50), salary decimal(10,2));
INSERT INTO EMP1 VALUES
('SALES',1000.00),
('SALES',300.00),
('SALES',3000.00),
('HR',2000.00),
('HR',5000.00),
('SALES',4500.00),
('IT',1000.00),
('IT',1000.00);

SELECT * FROM EMP1;

SELECT Department,SUM(SALARY) FROM EMP1 GROUP BY DEPARTMENT;
SELECT DEPARTMENT,AVG(SALARY) AS AVGSAL FROM EMP1 GROUP BY Department;

-- JOINS
-- ==============

CREATE TABLE CUSTOMER(customerid int primary key, customername varchar(20));
INSERT INTO CUSTOMER VALUES
(101,'Aditya'),
(102,'Shivam'),
(103,'Akash'),
(104,'vinod'),
(105,'kartik'),
(106,'vikash');

CREATE TABLE ORDERs(orderid int primary key, customerid int,prodname varchar(50),amount decimal(10,2));
INSERT INTO ORDERS VALUES
(1,101,'PRODUCT A',50.00),
(2,105,'PRODUCT B',150.00),
(3,101,'PRODUCT C',580.00),
(4,105,'PRODUCT D',30.00),
(5,104,'PRODUCT A',70.00),
(6,104,'PRODUCT A',80.00),
(7,103,'PRODUCT B',90.00),
(8,102,'PRODUCT A',150.00),
(9,101,'PRODUCT A',530.00),
(10,110,'PRODUCT B',1000.00);

SELECT * FROM CUSTOMER;
SELECT * FROM ORDERs;

SELECT * FROM CUSTOMER INNER JOIN ORDERS ON CUSTOMER.customerid = ORDERs.customerid;
SELECT * FROM CUSTOMER LEFT JOIN ORDERS ON CUSTOMER.customerid = ORDERs.customerid;
SELECT * FROM CUSTOMER RIGHT JOIN ORDERS ON CUSTOMER.customerid = ORDERs.customerid;
SELECT * FROM CUSTOMER FULL OUTER JOIN ORDERS ON CUSTOMER.customerid = ORDERs.customerid;

SELECT C.customerid,C.customername,O.orderid,O.amount FROM CUSTOMER C RIGHT JOIN ORDERS O ON C.customerid = O.customerid;

SELECT customerid, COUNT(customerid) FROM ORDERs GROUP BY customerid;


-- SUB QUERIES
-- ==============

SELECT *,(SELECT SUM(amount) FROM ORDERs) FROM CUSTOMER;


/*

SELECT
  student.first_name,
  student.last_name,
  course.name
FROM student
JOIN student_course
  ON student.id = student_course.student_id
JOIN course
  ON course.id = student_course.course_id;

*/

create table department(d_id varchar(3) primary key,d_name varchar(12),campusno int);

insert into department values
('D01','CSE',15),
('D02','IT',15),
('D03','ETC',15),
('D04','EEE',7),
('D05','ECE',3),
('D06','CIVIL',2);

select * from department;

create table employeeq(emp_id varchar(3)primary key,empname varchar(4),salary int,d_id varchar(3), foreign key(d_id) References department(d_id));
insert into employeeq values
('E01','ABC',10000,'D01'),
('E02','DEF',20000,'D02'),
('E03','GHI',30000,'D03'),
('E04','JKL',40000,'D04'),
('E05','MNO',50000,'D05'),
('E06','PQR',10000,'D06'),
('E07','VWX',10000,'D01'),
('E08','STU',10000,'D01');

select * from employeeq;

-- max salary
select * from employeeq where salary=(select max(salary) from employeeq);

-- salary less than avg salary
select * from employeeq where salary<(select avg(salary) from employeeq);

--display empid,name of emplyess who are in department located in campus -15
select emp_id,empname from employeeq where d_id in (select d_id from department where campusno=15);

--display the empid name of employee where did not loczted in campus 2,3
select emp_id, empname from employeeq where d_id not in(select d_id from department where campusno in(3,2));

-- atleast 1 employee with salary > 4000
select d_id from department where d_id in (select d_id from employeeq where  salary > 4000 group by d_id having count(*)>=1);

-- calculate avg salary of departments
select avg(salary) from employeeq where salary in(select AVG(salary) from employeeq group by d_id);


--select emp_id,empname from employeeq(select emp_id,empname from employeeq order by emp_id desc) where rownum <=5;

select * from employeeq where salary =  (select max(salary) from employeeq);
--2nd highest salary
select * from employeeq where emp_id in (select emp_id from employeeq where salary = (select max(salary) from employeeq where salary < (select MAX(salary) from employeeq )));

-- 3rd hoghest salary
select * from employeeq where emp_id in (select emp_id from employeeq where salary = (select max(salary) from employeeq where salary < (select MAX(salary) from employeeq where salary < (select MAX(salary) from employeeq))));

select * from employeeq
order by marks desc
offset 1 rows
fetch next 1 row only;