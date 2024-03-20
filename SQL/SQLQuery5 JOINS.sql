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