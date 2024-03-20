create table product(PRODUCTID int, PRODUCTNAME varchar(20),CATEGORYID int, price decimal(10,2), Quantityinstock int);
insert into product values
(1,'Laptop',1,800.00,10),
(2,'Smartphone',1,500.00,20),
(3,'Monitor',2,250.00,15);

select * from product;

create table categories(CategoryID int, CategoryName varchar(20));
insert into categories values
(1,'Electronic'),
(2,'Peripherals'),
(3,'Furniture');

select * from categories;

Create table order1(ORDERID int, CUSTOMERID int, ORDERDATE datetime, TOTALAmount decimal(10,2));


Insert into order1 values
(101,1,'2023-01-15 10:30:00',1500.00),
(102,2,'2023-02-20 14:45:00',800.00),
(103,1,'2023-03-05 08:15:00',450.00);


select * from order1;

-- Question 1
select productname from product where CATEGORYID in(select CATEGORYID from categories where CategoryName = 'Electronic');

-- Question 2
select max(price) from product where CATEGORYID 
in (select CATEGORYID from categories where CategoryName='Electronic');

-- question 3
Select * from product where price > 300.00 and Quantityinstock > 5;

-- Question 4

select avg(totalamount) from order1 where DATEPART(month, ORDERDATE) = 2
and DATEPART(year,ORDERDATE)=2023;

-- Question 5
UPDATE product SET Quantityinstock = 15 WHERE PRODUCTNAME = 'Laptop';
select * from product;

-- Question 6
select top 1 CUSTOMERID, sum(totalamount) as totalspent from order1 group by CUSTOMERID order by totalspent desc; 