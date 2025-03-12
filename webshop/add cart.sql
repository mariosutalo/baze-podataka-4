create table cart (
id int primary key auto_increment,
guid varchar(100) unique,
created_modified_date date,
user_id int
);


create table cart_items (
id int primary key auto_increment,
product_id int,
quantity decimal(9,2),
cart_id int,
foreign key(product_id) references products(id),
foreign key(cart_id) references cart(id)
);

insert into cart (guid, created_modified_date, user_id)
values ("a63823b7-9478-4f38-8790-c657422b4df4", current_date(), 2);

insert into cart_items(product_id, quantity, cart_id)
values 	(5, 2, 1),
		(4, 4, 1);

SELECT cart_items.id AS item_id, products.name, cart_items.quantity, cart_items.cart_id
FROM cart_items
LEFT JOIN products ON cart_items.product_id = products.id;

SELECT c.id AS item_id, p.name, c.quantity, c.cart_id
FROM cart_items c
LEFT JOIN products p ON c.product_id = p.id;
