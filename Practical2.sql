CREATE TABLE EMPLOYEES_PR_2 (
    emp_no Number(10) CONSTRAINT emp_no_pk PRIMARY KEY ,
    emp_name Varchar2(30) CONSTRAINT emp_name_nn NOT NULL,
    emp_sal Number(8,2) CONSTRAINT emp_sal_chk CHECK(emp_sal>0) ,
    emp_comm Number(8,2) CONSTRAINT emp_comm_chk CHECK(emp_comm>=0) ,
    dept_no Number(8,2) CONSTRAINT dept_no_nn NOT NULL 
) ;

CREATE TABLE SUPPLIER AS SELECT * FROM EMPLOYEES_PR_2 WHERE 1=0;
SELECT * FROM SUPPLIER ;

DESCRIBE SUPPLIER ;