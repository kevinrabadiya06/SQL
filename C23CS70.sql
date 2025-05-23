CREATE TABLE JOB(
    JOB_ID VARCHAR(15) NOT NULL UNIQUE,
    JOB_TITLE VARCHAR(30) NOT NULL,
    MIN_SAL NUMBER(7,2) NOT NULL,
    MAX_SAL NUMBER(7,2) NOT NULL
);

SELECT * FROM JOB;

CREATE TABLE EMPLOYEE(
    EMP_NO NUMBER(3) NOT NULL UNIQUE,
    EMP_NAME VARCHAR(30) NOT NULL,
    EMP_SAL NUMBER(8,2) NOT NULL,
    EMP_COMM NUMBER(6,1) NOT NULL,
    DEPT_NO NUMBER(3) NOT NULL
);

SELECT * FROM EMPLOYEE;

CREATE TABLE DEPOSIT(
    A_NO VARCHAR(5) NOT NULL UNIQUE,
    CNAME VARCHAR(15) NOT NULL,
    BNAME VARCHAR(10),
    AMOUNT NUMBER(7,2) NOT NULL,
    A_DATE DATE NOT NULL
);

SELECT * FROM DEPOSIT;

CREATE TABLE BORROW(
    LOAN_NO VARCHAR(5) NOT NULL UNIQUE,
    CNAME VARCHAR(15) NOT NULL,
    BNAME VARCHAR(10),
    AMOUNT NUMBER(7,2) NOT NULL
);

SELECT * FROM BORROW;

ALTER TABLE EMPLOYEE DROP COLUMN EMP_COMM;

ALTER TABLE EMPLOYEE ADD EMP_COMM NUMBER(6,1);

ALTER TABLE EMPLOYEE DROP COLUMN DEPT_NO;

ALTER TABLE EMPLOYEE ADD DEPT_NO NUMBER(3);

INSERT INTO EMPLOYEE(EMP_NO,EMP_NAME,EMP_SAL,EMP_COMM,DEPT_NO) VALUES('101','Smith','800','455','20');
INSERT INTO EMPLOYEE(EMP_NO,EMP_NAME,EMP_SAL,EMP_COMM,DEPT_NO) VALUES('102','Snehal','1600','0','25');
INSERT INTO EMPLOYEE(EMP_NO,EMP_NAME,EMP_SAL,EMP_COMM,DEPT_NO) VALUES('103','Adama','1100','425','20');
INSERT INTO EMPLOYEE(EMP_NO,EMP_NAME,EMP_SAL,EMP_COMM,DEPT_NO) VALUES('104','Aman','3000','','15');
INSERT INTO EMPLOYEE(EMP_NO,EMP_NAME,EMP_SAL,EMP_COMM,DEPT_NO) VALUES('105','Anita','5000','50000','10');
INSERT INTO EMPLOYEE(EMP_NO,EMP_NAME,EMP_SAL,EMP_COMM,DEPT_NO) VALUES('106','Anamika','2975','','30');


INSERT INTO JOB(JOB_ID,JOB_TITLE,MIN_SAL,MAX_SAL) VALUES('IT PROG','Programmer','4000','10000');
INSERT INTO JOB(JOB_ID,JOB_TITLE,MIN_SAL,MAX_SAL) VALUES('MK MGR','Marketing Manager','9000','15000');
INSERT INTO JOB(JOB_ID,JOB_TITLE,MIN_SAL,MAX_SAL) VALUES('FI MGR','Finance Manager','8200','12000');
INSERT INTO JOB(JOB_ID,JOB_TITLE,MIN_SAL,MAX_SAL) VALUES('FI ACC','Account','4200','9000');
INSERT INTO JOB(JOB_ID,JOB_TITLE,MIN_SAL,MAX_SAL) VALUES('LEC','Lecturer','6000','17000');
INSERT INTO JOB(JOB_ID,JOB_TITLE,MIN_SAL,MAX_SAL) VALUES('COMP OP','Computer Operator','1500','13000');

INSERT INTO DEPOSIT(A_NO,CNAME,BNAME,AMOUNT,A_DATE) VALUES('101','Anil','andheri','7000','01-jan-06');
INSERT INTO DEPOSIT(A_NO,CNAME,BNAME,AMOUNT,A_DATE) VALUES('102','sunil','virar','5000','15-jul-06');
INSERT INTO DEPOSIT(A_NO,CNAME,BNAME,AMOUNT,A_DATE) VALUES('103','jay','villeparle','6500','12-mar-06');
INSERT INTO DEPOSIT(A_NO,CNAME,BNAME,AMOUNT,A_DATE) VALUES('104','vijay','andheri','8000','17-sep-06');
INSERT INTO DEPOSIT(A_NO,CNAME,BNAME,AMOUNT,A_DATE) VALUES('105','keyur','dadar','7500','19-nov-06');
INSERT INTO DEPOSIT(A_NO,CNAME,BNAME,AMOUNT,A_DATE) VALUES('106','mayur','borivali','5500','21-dec-06');


INSERT INTO BORROW(LOAN_NO,CNAME,BNAME,AMOUNT) VALUES('201','ANIL','VRCE','1000.00');
INSERT INTO BORROW(LOAN_NO,CNAME,BNAME,AMOUNT) VALUES('206','MEHUL','AJNI','5000.00');
INSERT INTO BORROW(LOAN_NO,CNAME,BNAME,AMOUNT) VALUES('311','SUNIL','DHARAMPETH','3000.00');
INSERT INTO BORROW(LOAN_NO,CNAME,BNAME,AMOUNT) VALUES('321','MADHURI','ANDHERI','2000.00');
INSERT INTO BORROW(LOAN_NO,CNAME,BNAME,AMOUNT) VALUES('375','PRAMOD','VIRAR','8000.00');
INSERT INTO BORROW(LOAN_NO,CNAME,BNAME,AMOUNT) VALUES('481','KRANTI','NEHRUPLACE','3000.00');

DELETE FROM BORROW WHERE LOAN_NO=321; 
