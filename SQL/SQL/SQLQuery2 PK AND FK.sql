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

