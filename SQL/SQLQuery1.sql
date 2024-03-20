CREATE DATABASE EMPLOYEE;

USE EMPLOYEE;

CREATE TABLE EMP(Empid tinyint, Name varchar(20),Marks tinyint);

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