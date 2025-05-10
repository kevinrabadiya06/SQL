--CREATE TABLE Job (
--    job_id Varchar2(15) NOT NULL UNIQUE,
--    job_title Varchar2(30) NOT NULL,
--    min_sal Number(7,2) NOT NULL,
--    max_sal Number(7,2) NOT NULL
--) ;

--SELECT * FROM Job ;

CREATE TABLE Employee (
    emp_no Number(3) NOT NULL UNIQUE,
    emp_name Varchar2(30) NOT NULL,
    emp_sal Number(8,2) NOT NULL,
    emp_comm Number(6,1) NOT NULL,
    dept_no Number(3) NOT NULL
);


CREATE TABLE DEPOSIT(
    A_NO VARCHAR(5) NOT NULL UNIQUE,
    CNAME VARCHAR(15) NOT NULL,
    BNAME VARCHAR(10),
    AMOUNT NUMBER(7,2) NOT NULL,
    A_DATE DATE NOT NULL
);


CREATE TABLE BORROW(
    LOAN_NO VARCHAR(5) NOT NULL UNIQUE,
    CNAME VARCHAR(15) NOT NULL,
    BNAME VARCHAR(10),
    AMOUNT NUMBER(7,2) NOT NULL
);

-- INSERT INTO Job (job_id , job_title , min_sal , max_sal)
-- VALUES ( '23CS069' , 'CEO' , 10000 , 1000 );

-- SELECT * FROM Job;

DROP TABLE Employee ;


CREATE TABLE Employee (
    emp_no Number(3) NOT NULL UNIQUE,
    emp_name Varchar2(30) NOT NULL,
    emp_sal Number(8,2) NOT NULL,
    emp_comm Number(6,1) ,
    dept_no Number(3) NOT NULL
);


INSERT INTO Employee ( emp_no , emp_name, emp_sal , emp_comm , dept_no ) VALUES 
( 101 , 'Smith' , 800 ,455 , 20 ) ;
INSERT INTO Employee ( emp_no , emp_name, emp_sal , emp_comm , dept_no ) VALUES 
(102 , 'Snehal' , 1600,0,25) ;
INSERT INTO Employee ( emp_no , emp_name, emp_sal , emp_comm , dept_no ) VALUES 
(103,'Adama',1100,425,20) ;
INSERT INTO Employee ( emp_no , emp_name, emp_sal , emp_comm , dept_no ) VALUES 
(104,'Aman',3000 ,NULL, 15) ;
INSERT INTO Employee ( emp_no , emp_name, emp_sal , emp_comm , dept_no ) VALUES 
(105,'Anita',5000,50000,10) ;
INSERT INTO Employee ( emp_no , emp_name, emp_sal , emp_comm , dept_no ) VALUES 
(106,'Anamika',2975,NULL,30) ;

SELECT * FROM Employee ;


INSERT INTO Job (job_id , job_title , min_sal , max_sal) VALUES
('IT PROG' , 'Programmer' , 4000 , 10000);
INSERT INTO Job (job_id , job_title , min_sal , max_sal) VALUES
('MK MGR' , 'Marketing Manager' , 9000 , 15000);
INSERT INTO Job (job_id , job_title , min_sal , max_sal) VALUES
('FI MGR' , 'Finance Manager' , 8200 , 12000);
INSERT INTO Job (job_id , job_title , min_sal , max_sal) VALUES
('FI ACC' , 'Accounts' , 4200 , 9000);
INSERT INTO Job (job_id , job_title , min_sal , max_sal) VALUES
('LEC' , 'Lecturer' , 6000 , 17000);
INSERT INTO Job (job_id , job_title , min_sal , max_sal) VALUES
('COMP OP' , 'Computer Operator' , 1500 , 13000);

DELETE FROM Job WHERE job_id='23CS069' ;

SELECT * FROM Job ;

INSERT INTO DEPOSIT (A_NO , CNAME , BNAME , AMOUNT , A_DATE) VALUES
('101' , 'Anil' , 'andehri' , 7000 , TO_DATE('01-01-06','DD-MM-YY') );
INSERT INTO DEPOSIT (A_NO , CNAME , BNAME , AMOUNT , A_DATE) VALUES
('102', 'Sunil' , 'virar' , 5000 , TO_DATE('15-07-06','DD-MM-YY') );
INSERT INTO DEPOSIT (A_NO , CNAME , BNAME , AMOUNT , A_DATE) VALUES
('103', 'Jay' , 'vileparle' , 6500 , TO_DATE('12-03-06','DD-MM-YY') );
INSERT INTO DEPOSIT (A_NO , CNAME , BNAME , AMOUNT , A_DATE) VALUES
('104', 'Vijay' , 'andheri' , 8000 , TO_DATE('17-09-06','DD-MM-YY') );
INSERT INTO DEPOSIT (A_NO , CNAME , BNAME , AMOUNT , A_DATE) VALUES
('105', 'Keyur' , 'dadar' , 7500 , TO_DATE('19-11-06','DD-MM-YY') );
INSERT INTO DEPOSIT (A_NO , CNAME , BNAME , AMOUNT , A_DATE) VALUES
('106', 'Mayur' , 'borivali' , 5500 , TO_DATE('21-12-06','DD-MM-YY') );

SELECT * FROM DEPOSIT ;