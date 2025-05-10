CREATE TABLE salespeople_9 (
    snum number primary key,
    sname varchar(255) not null,
    city varchar(255),
    comm varchar(255)
);

DESCRIBE SALESPEOPLE_9;

INSERT INTO SALESPEOPLE_9(SNUM,SNAME,CITY,COMM)VALUES(1001,'Peel','London',0.12);
INSERT INTO SALESPEOPLE_9(SNUM,SNAME,CITY,COMM)VALUES(1002,'Serres','San Jose',0.13);
INSERT INTO SALESPEOPLE_9(SNUM,SNAME,CITY,COMM)VALUES(1004,'Motika','London',0.11);
INSERT INTO SALESPEOPLE_9(SNUM,SNAME,CITY,COMM)VALUES(1007,'Rifkin','Barcelona',0.15);
INSERT INTO SALESPEOPLE_9(SNUM,SNAME,CITY,COMM)VALUES(1003,'Axelord','New York',0.10);

SELECT * FROM SALESPEOPLE_9;



CREATE TABLE customer_9 (
    cnum number primary key,
    cname varchar(255) not null,
    city varchar(255),
    rating number default 10,
    snum number,
    foreign key (snum) references salespeople_9(snum)
);

DESCRIBE CUSTOMER_9;

INSERT INTO CUSTOMER_9 (CNUM, CNAME, CITY, RATING, SNUM) VALUES (2001, 'Hoffman', 'London', 100, 1001);
INSERT INTO CUSTOMER_9 (CNUM, CNAME, CITY, RATING, SNUM) VALUES (2002, 'Giovanne', 'Rome', 200, 1003);
INSERT INTO CUSTOMER_9 (CNUM, CNAME, CITY, RATING, SNUM) VALUES (2003, 'Liu', 'San Jose', 300, 1002);
INSERT INTO CUSTOMER_9 (CNUM, CNAME, CITY, RATING, SNUM) VALUES (2004, 'Grass', 'Berlin', 100, 1002);
INSERT INTO CUSTOMER_9 (CNUM, CNAME, CITY, RATING, SNUM) VALUES (2006, 'Clemens', 'London', 300, 1007);
INSERT INTO CUSTOMER_9 (CNUM, CNAME, CITY, RATING, SNUM) VALUES (2007, 'Pereira', 'Rome', 100, 1004);

SELECT * FROM CUSTOMER_9;



CREATE TABLE orders_9 (
    order_no number primary key,
    amount number,
    odate date,
    cnum number,
    snum number,
    foreign key (cnum) references customer_9(cnum),
    foreign key (snum) references salespeople_9(snum)
);
DESCRIBE orders_9;
INSERT INTO orders_9 (ORDER_NO, AMOUNT, ODATE, CNUM, SNUM) VALUES (3001, 18.96, TO_DATE('10.03.1994', 'DD.MM.YYYY'), 2002, 1002);
INSERT INTO orders_9 (ORDER_NO, AMOUNT, ODATE, CNUM, SNUM) VALUES (3003, 767.19, TO_DATE('10.03.1994', 'DD.MM.YYYY'), 2001, 1001);
INSERT INTO orders_9 (ORDER_NO, AMOUNT, ODATE, CNUM, SNUM) VALUES (3002, 1900.10, TO_DATE('10.03.1994', 'DD.MM.YYYY'), 2007, 1003);
INSERT INTO orders_9 (ORDER_NO, AMOUNT, ODATE, CNUM, SNUM) VALUES (3005, 5160.45, TO_DATE('10.03.1994', 'DD.MM.YYYY'), 2003, 1002);
INSERT INTO orders_9 (ORDER_NO, AMOUNT, ODATE, CNUM, SNUM) VALUES (3006, 1098.16, TO_DATE('10.03.1994', 'DD.MM.YYYY'), 2008, 1002);
INSERT INTO orders_9 (ORDER_NO, AMOUNT, ODATE, CNUM, SNUM) VALUES (3009, 1713.23, TO_DATE('10.04.1994', 'DD.MM.YYYY'), 2002, 1003);
INSERT INTO orders_9 (ORDER_NO, AMOUNT, ODATE, CNUM, SNUM) VALUES (3007, 75.75, TO_DATE('10.04.1994', 'DD.MM.YYYY'), 2004, 1002);
INSERT INTO orders_9 (ORDER_NO, AMOUNT, ODATE, CNUM, SNUM) VALUES (3008, 4723.95, TO_DATE('10.05.1994', 'DD.MM.YYYY'), 2006, 1001);
INSERT INTO orders_9 (ORDER_NO, AMOUNT, ODATE, CNUM, SNUM) VALUES (3010, 1309.95, TO_DATE('10.06.1994', 'DD.MM.YYYY'), 2004, 1002);
INSERT INTO orders_9 (ORDER_NO, AMOUNT, ODATE, CNUM, SNUM) VALUES (3011, 9891.00, TO_DATE('10.06.1994', 'DD.MM.YYYY'), 2006, 1001);
SELECT * FROM orders_9;


--drop TABLE salespeople_9 ;
--
--drop TABLE customer_9 ;
--
--drop TABLE orders_9;

--Queries  
--1
SELECT C.* FROM CUSTOMER_9 C JOIN SALESPEOPLE_9 S ON C.SNUM = S.SNUM WHERE S.SNAME IN ('Peel', 'Motika');
--2
SELECT * FROM ORDERS_9 WHERE AMOUNT > 0;
--3
SELECT S.SNUM, S.SNAME, MAX(O.AMOUNT) AS HIGHEST_ORDER FROM ORDERS_9 O JOIN SALESPEOPLE_9 S ON O.SNUM = S.SNUM WHERE O.AMOUNT > 3000 GROUP BY S.SNUM, S.SNAME;
--4
SELECT S.SNUM, S.SNAME, S.CITY AS SALES_CITY, C.CNUM, C.CNAME, C.CITY AS CUSTOMER_CITY FROM SALESPEOPLE_9 S JOIN CUSTOMER_9 C ON S.CITY = C.CITY AND S.SNUM = C.SNUM;
--5 
select cname,order_no from orders_9 ,customer_9 where orders_9.cnum=customer_9.cnum ;
 --6
select * from customer_9,salespeople_9 where salespeople_9.comm>0.12 and customer_9.snum=salespeople_9.snum ;
--7
select cname , city from customer_9 where rating =(select rating from customer_9 where cname='Hoffman') and cname!='Hoffman' ;
--8
select count(rating) from customer_9 where rating > (select avg(rating) from customer_9 where city='San Jose');
--9
select sum(amount) from orders_9 group by snum having (sum(amount)>(select max(amount) from orders_9)) ;
--10
select * from customer_9 where rating>=400 union select * from customer_9 where rating<400 ;