drop table sales;

create table sales(id tinyint, country varchar(7), amount int);
insert into sales values(1,'india',200),(2,'india',300),(3,'usa',250),(4,'usa',240),(5,'canada',600);

select * from sales;

select * from sales where country like 'i%';

select * from sales where amount>200;


select * from sales where country in (select country from sales where country like 'i%') and amount>200;
