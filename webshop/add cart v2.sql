use webshop;

DROP TABLE if EXISTS cart_items;
DROP TABLE IF EXISTS cart;
DROP table if exists sessions;

create table sessions (
guid varchar(100) primary key,
created_modified_date date
);


create table cart_items (
id int primary key auto_increment,
product_id int,
quantity decimal(9,2),
session_guid varchar(100),
foreign key(product_id) references products(id),
foreign key(session_guid) references sessions(guid)
);

insert into sessions (guid, created_modified_date)
values ("a63823b7-9478-4f38-8790-c657422b4df4", current_date());

insert into cart_items(product_id, quantity, session_guid)
values 	(5, 2, "a63823b7-9478-4f38-8790-c657422b4df4"),
		(4, 4, "a63823b7-9478-4f38-8790-c657422b4df4");