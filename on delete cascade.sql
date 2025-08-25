show  databases;
create database  spDB1;
use spDB1;
create table category (
    category_id int primary key auto_increment,
    category_name varchar(30) not null unique
) ;
insert into category (category_name) values ('furnitures'), ('electronics');
create table product (
    product_id int auto_increment primary key,
    product_name varchar(30) not null unique,
    category_id int,
        foreign key (category_id) references category(category_id) 
       
);
insert into product (product_name, category_id) values ('mobile', 2), ('fan', 1), ('power bank', 2);
show tables from shDB1;
desc category;
desc product;
show create table product;
alter table product
add constraint fk_product_category
foreign key (category_id) references category(category_id) on delete cascade;
delete from category where category_id = 1;
select * from category order by category_id asc;
select * from product;
