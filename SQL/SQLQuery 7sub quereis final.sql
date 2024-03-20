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