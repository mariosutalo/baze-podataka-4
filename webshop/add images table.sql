create table product_images (
id int primary key auto_increment,
image_url varchar(200),
product_id int,
foreign key(product_id) references products(id)
);

insert into product_images (image_url, product_id)
values ("slika1.jpg", 4),
	   ("slika2.jpg", 4),
       ("slika3.jpg", 5);

-- selects all columns and rows from both tables
select *
from products left join product_images
on products.id = product_images.product_id;

-- selects all data for single product
select *
from products left join product_images
on products.id = product_images.product_id
where products.id = 4;

-- selects only some field from both tables
SELECT p.id AS product_id, p.name, p.description, p.price, pi.image_url
FROM products p
LEFT JOIN product_images pi ON p.id = pi.product_id
WHERE p.id = 1;



