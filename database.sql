create database productSales


USE [productSales]
GO

/****** Object:  Table [dbo].[products]    Script Date: 2/5/2017 10:03:54 PM ******/
DROP TABLE [dbo].[products]
GO

/****** Object:  Table [dbo].[userlogin]    Script Date: 2/5/2017 10:48:23 PM ******/
DROP TABLE [dbo].[userlogin]
GO

create table userlogin
(
	id int identity(1,1) primary key,
	username varchar(50) not null,
	password varchar(50) not null,
	lastName varchar(50) null ,
	firstName varchar(50) not null,
	sex char(1) DEFAULT 'M',
	mobile bigint null,
	email varchar(50) not null,
	address varchar(50) null,
	isAdmin char(1) DEFAULT 'N'
)



create table products
(
	id int identity(1,1) primary key,
	name varchar(30) not null,
	price int not null,
	color varchar(100) not null,

	size varchar(100) not null,
	catogory varchar(20) not null,
	brand varchar(10) not null,


	description varchar(1000) not null,
	rate int default 5 not null,
	tag varchar(20) not null,

	sku varchar(10) not null,
	discount int default 0 null,
	infomation varchar(1000) null,
	
	numOfRate int null,
	reviews varchar(1000) null,
	picture varchar(200) null
)



go

insert into products (name, price, discount, color, size, catogory, brand, description, infomation, rate, numOfRate, reviews, tag, sku, picture) values('Lorem Ipsum1', 95, 50, 'Black, Red', 'Large, Medium, Small', 'Women', 'Titan', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', '10 * 10 * 10', 4, 2, 'Good. Great.', 'Woman', 'CK09', 'p-1.png');
insert into products (name, price, discount, color, size, catogory, brand, description, infomation, rate, numOfRate, reviews, tag, sku, picture) values('Lorem Ipsum2', 95, 50, 'Black, Red', 'Large, Medium, Small', 'Women', 'Titan', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', '10 * 10 * 10', 4, 2, 'Good. Great.', 'Woman', 'CK09', 'p-2.png');
insert into products (name, price, discount, color, size, catogory, brand, description, infomation, rate, numOfRate, reviews, tag, sku, picture) values('Lorem Ipsum3', 95, 50, 'Black, Red', 'Large, Medium, Small', 'Women', 'Titan', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', '10 * 10 * 10', 4, 2, 'Good. Great.', 'Woman', 'CK09', 'p-3.png');
insert into products (name, price, discount, color, size, catogory, brand, description, infomation, rate, numOfRate, reviews, tag, sku, picture) values('Lorem Ipsum4', 95, 50, 'Black, Red', 'Large, Medium, Small', 'Women', 'Titan', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', '10 * 10 * 10', 4, 2, 'Good. Great.', 'Woman', 'CK09', 'p-4.png');
insert into products (name, price, discount, color, size, catogory, brand, description, infomation, rate, numOfRate, reviews, tag, sku, picture) values('Lorem Ipsum5', 95, 50, 'Black, Red', 'Large, Medium, Small', 'Women', 'Titan', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', '10 * 10 * 10', 4, 2, 'Good. Great.', 'Woman', 'CK09', 'p-5.png');
insert into products (name, price, discount, color, size, catogory, brand, description, infomation, rate, numOfRate, reviews, tag, sku, picture) values('Lorem Ipsum6', 95, 50, 'Black, Red', 'Large, Medium, Small', 'Women', 'Titan', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', '10 * 10 * 10', 4, 2, 'Good. Great.', 'Woman', 'CK09', 'p-6.png');
insert into products (name, price, discount, color, size, catogory, brand, description, infomation, rate, numOfRate, reviews, tag, sku, picture) values('Lorem Ipsum7', 95, 50, 'Black, Red', 'Large, Medium, Small', 'Women', 'Titan', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', '10 * 10 * 10', 4, 2, 'Good. Great.', 'Woman', 'CK09', 'p-7.png');
insert into products (name, price, discount, color, size, catogory, brand, description, infomation, rate, numOfRate, reviews, tag, sku, picture) values('Lorem Ipsum8', 95, 50, 'Black, Red', 'Large, Medium, Small', 'Women', 'Titan', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', '10 * 10 * 10', 4, 2, 'Good. Great.', 'Woman', 'CK09', 'p-8.png');
go


insert into userlogin (username, password, lastName, firstName, sex, mobile, email, address,isAdmin)
 values('mayue','mayue','Ma', 'Yue','M', '8572851873', 'yuema@callutheran.edu', '1527 Patricia Ave, Simi Valley, CA', 'N')
 insert into userlogin (username, password, lastName, firstName, sex, mobile, email, address,isAdmin)
 values('karthik','karthik','karthik', 'karthik','M', '6505508450', 'karthikjain@callutheran.edu', 'Thousand oaks, CA', 'N')
 insert into userlogin (username, password, lastName, firstName, sex, mobile, email, address,isAdmin)
 values('admin','admin','admin', 'admin','M', '0000', 'admin@callutheran.edu', 'Thousand oaks, CA', 'Y')
