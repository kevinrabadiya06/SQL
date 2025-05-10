create table product (
	product_id int identity(1,1) primary key,
	name varchar(255) not null,
	category varchar(255) not null,
	price decimal(10,2) not null,
	stock int not null
);

create table AuditTrail (
	audit_id int identity(1,1) primary key,
	product_id int not null,
	old_name varchar(255) not null,
	old_category varchar(255) not null,
	old_price decimal(10,2),
	old_stock int,
	update_timesatmp datetime default getdate()
);

--1 
go

create procedure InsertProduct
	@name varchar(255),
	@category varchar(255),
	@price decimal(10,2),
	@stock int

	as
	begin

	insert into product(name,category,price,stock)
	values (@name,@category,@price,@stock);

	end;

exec InsertProduct 'Laptop' , 'Electronics' , 50000.00 , 10;
go
 --2

 create procedure GetProductDetails
	@product_id int
	as
	begin
	select * from product where product_id=@product_id ;
	end;

exec GetProductDetails 1;

--3
go
create procedure UpdateProductStock
	@product_id int,
	@stock int
	as
	begin
	update product set stock=@stock where product_id=@product_id ;
	end;

exec UpdateProductStock 1,15;

--4
go
create procedure DeleteProduct
	@product_id int
	as
	begin
	delete from product where product_id=@product_id ;
	end;

exec DeleteProduct 1;

--5   
create function CalculateDiscountedPrice (@price decimal(10,5) , @discount decimal(5,2))
	returns decimal(10,2)
	as
	begin

	declare @discounted_price decimal(10,2) ;
	set @discounted_price = @price - (@price*@discount)/100;
	return @discounted_price ;

	end ;

select dbo.CalculateDiscountedPrice(1000,10) as discounted_price ;


--6
go
create trigger BeforeProductUpdate
	on product
	for update
	as 
	begin

	insert into AuditTrail (product_id,old_name,old_category,old_price,old_stock)
	select
	d.product_id, d.name , d.category , d.price , d.stock
	from
	deleted d;
end;

update product set price = 55000 where product_id=2;

select * from AuditTrail where product_id = 2;