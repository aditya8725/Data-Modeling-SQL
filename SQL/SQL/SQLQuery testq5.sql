create table student11(studentid int, firstname varchar(20),lastname varchar(20), age int, gpa decimal(10,2));
insert into student11 values
(1,'Jon','Doe',21,3.5),
(2,'Jane','smith',22,8.8),
(3,'Alice','Johnson',20,3.2),
(4,'Bob','Williams',23,3.6);

create table course4(courseid int, coursename varchar(20), instructor varchar(20),credithours int);

insert into course4 values
(1,'Database Management ','Dr Smit',3),
(2,'Data Structure','Prof.john',4),
(3,'Software Engineering','Dr.Brown',3);


create table enrollment4 (
enrollmentid int,
studentid int,
courseid int,
 enrollmentdate date);

insert into enrollment4 values
(1, 1, 1, '2023-09-01'),
(2, 1, 2, '2023-09-01'),
(3, 2, 2, '2023-09-02'),
(4, 3, 3, '2023-09-03'),
(5, 4, 1, '2023-09-04');

select firstname, lastname from student11 where age>20;

select avg(gpa) as averagegpa from student11;

select coursename, credithours from course4;

select top 3 coursename, credithours from course4 order by credithours desc;

select firstname, c.coursename, c.instructor from student11 s inner join
enrollment4 e on s.studentid = e.studentid inner join 
course4 c on e.courseid = c.courseid;

