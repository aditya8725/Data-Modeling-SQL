create table employees(empployeeid int ,FIRSTNAME varchar(15), LASTNAME varchar(15),Departmentid int, salary decimal(10,2)); 

insert into employees values
(1,'John','Smit',101,60000.00),
(2,'Emily','Johnson',102,55000.00),
(3,'Michael','Davis',101,65000.00);

select * from employees;

create table departments (departmentid int, departmentname varchar(15));
insert into departments values
(101,'Sales'),
(102,'Marketing'),
(103,'Finance');

select * from employees;

Create table order2(ORDERID int, EmployeeID int, ORDERDATE datetime, TOTALAmount decimal(10,2));


Insert into order2 values
(101,1,'2023-01-15 ',1500.00),
(102,2,'2023-02-20 ',800.00),
(103,1,'2023-03-05 ',455.00);

select * from order2;

--q1
select firstname,lastname,salary from employees where Departmentid = (select Departmentid from departments where departmentname = 'sales');

--q2
select e.empployeeid, sum(o.totalamount) as totordamt from order2 o 
inner join employees e on o.EmployeeID = e.empployeeid where e.Departmentid = 
(select Departmentid from departments where departmentname = 'sales')
group by e.empployeeid;

--q3

select firstname,lastname,salary from employees where Departmentid = 
(select Departmentid  from departments where departmentname= 'Marketing') and salary>=55000;

--q4

select avg(totalamount) as avgtotalamount from order2 where orderdate >= '2023-02-01'
and orderdate < '2023-03-01';

-- 5
update employees set salary = 65000 where firstname = 'John';

--6
select d.departmentname, avg(e.salary)as avgsalary
from employees e join departments d on e.departmentid = d.departmentid group by
d.departmentname order by avgsalary desc;