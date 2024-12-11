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

