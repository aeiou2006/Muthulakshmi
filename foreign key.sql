show databases;
create database shopDB;
use shopDB;
create table category(
category_id int primary key auto_increment,
category_name varchar(30) not null unique);
insert into category (category_name) values('furnitures'),('electronics');
DROP TABLE IF EXISTS product;
create table product(
product_id int  auto_increment primary key,
product_name varchar(30) not null unique,
category_id int,
foreign key(category_id) references category(category_id));
insert into product (product_name,category_id) values('mobile',2),('fan',1),('power bank',2);
show tables from shopDB;
desc category;
select * from category;
select * from product;