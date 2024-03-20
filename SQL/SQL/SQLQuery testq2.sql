CREATE TABLE CUSTOMERS(CUSTOMERID int primary key, FIRSTNAME varchar(15), LASTNAME varchar(15),EMAIL varchar(20), REGISTRATIONDATE date);
INSERT INTO CUSTOMERS VALUES
(1,'JOHN','DOE','john@example.com','2023-01-10'),
(2,'Jane','SMIT','jane@example.com','2023-02-15'),
(3,'Michael','Johnson','michael@example.com','2023-03-20');

select * from CUSTOMERS;

Create table orders(ORDERID int, CUSTOMERID int, ORDERDATE datetime, TOTALAmount decimal(10,2) foreign key(customerid) References customers(customerid));


Insert into orders values
(101,1,'2023-01-15 10:30:00',150.00),
(102,2,'2023-02-20 14:45:00',200.00),
(103,1,'2023-03-05 08:15:00',75.00);


select * from orders;

create table products(PRODUCTID int, PRODUCTNAME VARCHAR(10),PRICE decimal(10,2),QUANTITYSTOCK int);
insert into products values
(1001,'Widget A',25.00,50),
(1002,'Widget B',30.00,75),
(1003,'Widget C',20.00,30);

select * from products;

-- Question 1
select c.firstname, c.LASTNAME as TotalAMT from CUSTOMERS as c full outer join orders as o on c.customerid = o.customerid
where datepart(month,orderdate) = 2 and datepart(year,orderdate) =2023;

-- Question 2
select count(*) as customerid , sum(totalamount) from orders group by CUSTOMERID;

-- Question 3
Select * from products where price > 25.00 and QUANTITYSTOCK > 50;

-- Question 4

select avg(totalamount) from orders where DATEPART(month, ORDERDATE) = 1
and DATEPART(year,ORDERDATE)=2023;

-- Question 5
UPDATE products SET PRICE = 30.00 WHERE PRODUCTNAME = 'Widget A';
select * from products;

-- Question 6
  select top 1 CUSTOMERS.FIRSTNAME,sum(totalamount) as TotalAMT from CUSTOMERS 
  inner join orders on CUSTOMERS.CUSTOMERID = orders.CUSTOMERID group by CUSTOMERS.CUSTOMERID, CUSTOMERS.FIRSTNAME;