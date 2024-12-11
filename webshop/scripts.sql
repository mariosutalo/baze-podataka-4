-- create database  webshop
use webshop

create table categories (
id int primary key auto_increment,
name varchar(50)
);

create table products (
id int primary key auto_increment,
name varchar(50),
price decimal(10,2),
stock int,
category_id int,
foreign key (category_id) references categories (id)
);

insert into categories (name)
values 	("laptops"),
		("monitors"),
		("keyboards");

insert into products (name, price, stock, category_id)
values 	("Asus ROG i5 12400f", 1300, 12, 1),
		("Razer hunstman mini", 130, 20, 3),
		("Hp Probook i3 10100f", 600,10, 1);



