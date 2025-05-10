CREATE TABLE salespeople (
    snum number primary key,
    sname varchar(255) not null,
    city varchar(255),
    comm varchar(255)
);
DESC salespeople;

select * from salespeople ;

INSERT INTO salespeople (snum, sname, city, comm) VALUES (1001, 'Peel', 'London', '0.12');
INSERT INTO salespeople (snum, sname, city, comm) VALUES (1002, 'Serres', 'San Jose', '0.13');
INSERT INTO salespeople (snum, sname, city, comm) VALUES (1003, 'SL002', 'Ahmedabad', '0.15');
INSERT INTO salespeople (snum, sname, city, comm) VALUES (1004, 'SL003', 'Indore', '0.14');
INSERT INTO salespeople (snum, sname, city, comm) VALUES (1005, 'SL004', 'New York', '0.13');
INSERT INTO salespeople (snum, sname, city, comm) VALUES (1006, 'SL005', 'New Jersey', '0.15');
INSERT INTO salespeople (snum, sname, city, comm) VALUES (1007, 'SL006', 'Chennai', '0.16');
INSERT INTO salespeople (snum, sname, city, comm) VALUES (1008, 'SL007', 'Kolkata', '0.17');
INSERT INTO salespeople (snum, sname, city, comm) VALUES (1009, 'SL008', 'Guajarat', '0.18');


INSERT INTO salespeople (snum, sname, city, comm) VALUES (6969,'Demo',null,null);



CREATE TABLE customer (
    cnum number primary key,
    cname varchar(255) not null,
    city varchar(255),
    rating number default 10,
    snum number,
    foreign key (snum) references salespeople(snum)
);
DESC customer;


INSERT INTO customer (cnum, cname, city, rating, snum) VALUES (2001, 'Hoffman', 'London', 100, 1001);
INSERT INTO customer (cnum, cname, city, rating, snum) VALUES (2003, 'Liu', 'San Jose', 300, 1002);
INSERT INTO customer (cnum, cname, city, rating, snum) VALUES (2005, 'Customer1', 'Ahmedabad', 100, 1003);
INSERT INTO customer (cnum, cname, city, rating, snum) VALUES (2007, 'Customer2', 'Indore', 200, 1004);
INSERT INTO customer (cnum, cname, city, rating, snum) VALUES (2009, 'Customer3', 'New York', 300, 1005);
INSERT INTO customer (cnum, cname, city, rating, snum) VALUES (2011, 'Customer4', 'New Jersey', 400, 1006);
INSERT INTO customer (cnum, cname, city, rating, snum) VALUES (2013, 'Customer5', 'Chennai', 500, 1007);
INSERT INTO customer (cnum, cname, city, rating, snum) VALUES (2015, 'Customer6', 'Kolkata', 600, 1008);
INSERT INTO customer (cnum, cname, city, rating, snum) VALUES (2017, 'Customer7', 'Guajarat', 700, 1009);
INSERT INTO customer (cnum, cname, city, rating, snum) VALUES (2019, 'Customer8', 'Anand', 800, 1010);
INSERT INTO customer (cnum, cname, city, rating, snum) VALUES (2021, 'Customer9', 'London', 900, 1011);


INSERT INTO customer (cnum, cname, city, snum) VALUES (2023, 'Customer10', 'Bangalore', 1001);
INSERT INTO customer (cnum, cname, city, snum) VALUES (2025, 'Customer11', 'Delhi', 1002);

INSERT INTO customer (cnum, cname, city, rating, snum) VALUES (2027,'Megh', null, 500, 6969);

select * from customer;


CREATE TABLE orders (
    order_no number primary key,
    amount number,
    odate date,
    cnum number,
    snum number,
    foreign key (cnum) references customer(cnum),
    foreign key (snum) references salespeople(snum)
);
DESC orders;

INSERT INTO orders (order_no, amount, odate, cnum, snum) VALUES (3001, 18.96, TO_DATE('03/10/1994', 'MM/DD/YYYY'), 2002, 1001);
INSERT INTO orders (order_no, amount, odate, cnum, snum) VALUES (3002, 19.95, TO_DATE('03/01/1995', 'MM/DD/YYYY'), 2003, 1002);
INSERT INTO orders (order_no, amount, odate, cnum, snum) VALUES (3003, 201, TO_DATE('01/02/1995', 'MM/DD/YYYY'), 2004, 1003);
INSERT INTO orders (order_no, amount, odate, cnum, snum) VALUES (3004, 2005, TO_DATE('06/02/1995', 'MM/DD/YYYY'), 2005, 1004);
INSERT INTO orders (order_no, amount, odate, cnum, snum) VALUES (3005, 2336, TO_DATE('04/01/2004', 'MM/DD/YYYY'), 2006, 1005);
INSERT INTO orders (order_no, amount, odate, cnum, snum) VALUES (3006, 523, TO_DATE('04/15/1996', 'MM/DD/YYYY'), 2007, 1006);
INSERT INTO orders (order_no, amount, odate, cnum, snum) VALUES (3007, 652, TO_DATE('05/16/1995', 'MM/DD/YYYY'), 2008, 1007);
INSERT INTO orders (order_no, amount, odate, cnum, snum) VALUES (3008, 125, TO_DATE('05/17/1995', 'MM/DD/YYYY'), 2009, 1008);
INSERT INTO orders (order_no, amount, odate, cnum, snum) VALUES (3009, 332, TO_DATE('04/15/1996', 'MM/DD/YYYY'), 2010, 1009);
INSERT INTO orders (order_no, amount, odate, cnum, snum) VALUES (3010, 225, TO_DATE('05/16/1995', 'MM/DD/YYYY'), 2011, 1010);
INSERT INTO orders (order_no, amount, odate, cnum, snum) VALUES (3011, 3356, TO_DATE('05/17/1995', 'MM/DD/YYYY'), 2012, 1011);

select * from orders ;


INSERT INTO orders (order_no, amount, odate, cnum, snum) VALUES (3012, 1500, TO_DATE('06/01/2000', 'MM/DD/YYYY'), 9999, 1001);
INSERT INTO orders (order_no, amount, odate, cnum, snum) VALUES (3013, 1500, TO_DATE('06/01/2000', 'MM/DD/YYYY'), 2002, 9999);
INSERT INTO orders (order_no, amount, odate, cnum, snum) VALUES (3013, null, null,2027, 6969);


CREATE TABLE sales_order (
    order_no VARCHAR(255) PRIMARY KEY check(order_no like 'O%') ,
    order_date DATE,
    client_no varchar(255),
    dely_addr VARCHAR(255),
    salesman_no varchar(255),
    dely_type varchar(255) DEFAULT 'F',
    order_status VARCHAR(50) CHECK (
        order_status IN ('In Process', 'Fulfilled', 'Backorder', 'Cancelled')
    ),
    FOREIGN KEY (client_no) REFERENCES client_master(client_no),
    FOREIGN KEY (salesman_no) REFERENCES salesman_master(salesman_no)
);
DESC sales_order;

CREATE TABLE Salesman_master (
    Salesman_no VARCHAR(255) PRIMARY KEY,
    Salesman_name VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(255),
    Pincode VARCHAR(20),
    State VARCHAR(255),
    Sal_amt NUMBER NOT NULL CHECK (Sal_amt > 0),
    Ytd_sales NUMBER NOT NULL CHECK (Ytd_sales > 0),
    Tgt_sales NUMBER NOT NULL,
    CHECK (salesman_no LIKE 'S%')
);
DESC Salesman_master;

INSERT INTO Salesman_master (Salesman_no, Salesman_name, Address, City, Pincode, State, Sal_amt, Ytd_sales, Tgt_sales) VALUES ('S001', 'John Doe', '123 Main St', 'New York', '10001', 'New York',0, -200, 200000);


CREATE TABLE Client_master (
    Client_no VARCHAR(255) PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    Pincode VARCHAR(20),
    Bal_due NUMBER CHECK (Bal_due >= 0),
    CHECK (Client_no LIKE 'C%')
);
DESC Client_master;

INSERT INTO Client_master (Client_no, Name, Address, City, State, Pincode, Bal_due) VALUES ('A001', 'John Doe', '123 Main St', 'New York', 'NY', '10001', 500);
INSERT INTO Client_master (Client_no, Name, Address, City, State, Pincode, Bal_due) VALUES ('C002', 'Jane Smith', '456 Elm St', 'Los Angeles', 'CA', '90001', -100);
INSERT INTO Client_master (Client_no, Name, Address, City, State, Pincode, Bal_due) VALUES ('C003', NULL, '789 Oak St', 'Chicago', 'IL', '60601', 300);


