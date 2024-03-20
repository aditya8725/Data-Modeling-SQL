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