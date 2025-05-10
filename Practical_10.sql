--A user wants to calculate the product of two positive numbers, e.g., 10 and 5, to determine total costs.
declare
    num1 number;
    num2 number;
    ans number;
begin 
    num1:=10;
    num2:=5;
    ans:=num1*num2;
    dbms_output.put_line('Product of 10 and 5 is ' ||ans);
end;

--Named pl sql
create or replace procedure product_mul(num1 in number , num2 in number , ans out number)
is
begin
    ans:=num1*num2;
end;

declare
    num1 number;
    num2 number;
    ans number;
begin 
    num1:=10;
    num2:=5;
    product_mul(num1,num2,ans);
    dbms_output.put_line('Product of 10 and 5 is ' ||ans);
end;


--A user wants to verify that multiplying any number with zero results in zero, e.g., 15 and 0.
declare 
    num1 number;
    num2 number;
    ans number;
begin 
    num1:=15;
    num2:=0;
    ans:=num1*num2;
    
    dbms_output.put_line('Product of 15 and 0 is ' ||ans);
end;

--Named pl sql

create or replace procedure product_mul(num1 in number , num2 in number , ans out number)
is
begin
    ans:=num1*num2;
end;

declare
    num1 number;
    num2 number;
    ans number;
begin 
    num1:=15;
    num2:=0;
    product_mul(num1,num2,ans);
    dbms_output.put_line('Product of 15 and 0 is ' ||ans);
end;

--A user is calculating the product of two negative numbers, e.g., -4 and -6, which should result in a positive product.

declare 
    num1 number;
    num2 number;
    ans number;
begin 
    num1:=-4;
    num2:=-6;
    ans:=num1*num2;
    
    dbms_output.put_line('Product of -4 and -6 is ' ||ans);
end;

--Named pl sql
create or replace procedure product_mul(num1 in number , num2 in number , ans out number)
is
begin
    ans:=num1*num2;
end;

declare
    num1 number;
    num2 number;
    ans number;
begin 
    num1:=-4;
    num2:=-6;
    product_mul(num1,num2,ans);
    dbms_output.put_line('Product of -4 and -6 is ' ||ans);
end;


--A user is calculating the product of a positive and a negative number, e.g., 7 and -3, to validate the outcome as negative.
declare 
    num1 number;
    num2 number;
    ans number;
begin 
    num1:=7;
    num2:=-3;
    ans:=num1*num2;
    
    dbms_output.put_line('Product of 7 and -3 is ' ||ans);
end;


--Named pl sql

create or replace procedure product_mul(num1 in number , num2 in number , ans out number)
is
begin
    ans:=num1*num2;
end;

declare
    num1 number;
    num2 number;
    ans number;
begin 
    num1:=7;
    num2:=-3;
    product_mul(num1,num2,ans);
    dbms_output.put_line('Product of 7 and -3 is ' ||ans);
end;


--A user wants to calculate the product of two decimal numbers, e.g., 2.5 and 4.2, for precision-sensitive operations.
declare
    num1 number;
    num2 number;
    ans number;
begin 
    num1:=2.5;
    num2:=4.2;
    ans:=num1*num2;
    dbms_output.put_line('Product of 2.5 and 4.2 is ' ||ans);
end;

--Named pl sql

create or replace procedure product_mul(num1 in number , num2 in number , ans out number)
is
begin
    ans:=num1*num2;
end;

declare
    num1 number;
    num2 number;
    ans number;
begin 
    num1:=2.5;
    num2:=4.2;
    product_mul(num1,num2,ans);
    dbms_output.put_line('Product of 2.5 and 4.2 is ' ||ans);
end;
