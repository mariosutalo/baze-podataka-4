create table orders (
id int primary key auto_increment,
full_name varchar(1000),
street varchar(1000),
zip_code varchar(100),
city varchar(300),
phone varchar(100),
session_guid varchar(100),
status enum('pending', 'processing', 'completed', 'canceled') default 'pending',
payment_type enum('card', 'pay_on_delivery')
);

create table order_items(
id int primary key auto_increment,
product_id int,
quantity decimal(6,2),
price decimal(8,2),
order_id int,
foreign key (product_id) references products(id),
foreign key (order_id) references orders(id)
);