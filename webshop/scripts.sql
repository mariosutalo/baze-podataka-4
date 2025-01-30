-- create database  webshop;
use webshop;

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

ALTER TABLE products
ADD COLUMN image_url varchar(1024) null;

ALTER TABLE products
ADD COLUMN likes INT DEFAULT 0 NOT NULL;

ALTER TABLE products
ADD COLUMN specs varchar(1024) null;

ALTER TABLE products
ADD COLUMN warranty INT DEFAULT 24 NOT NULL;

ALTER TABLE products
ADD COLUMN description varchar(5000) null;



-- UPDATE products
-- SET image_url = "slika1.jpg", 
--     likes = 3, 
--     specs = "Podnožje: Intel LGA1700;Vrsta memorije: DDR4"
-- WHERE id = 4;

UPDATE products
SET description = "PROCESSOR
Support Intel Core 14th/ 13th/ 12th Gen Processors, Intel Pentium Gold and Celeron Processors
Processor socket LGA1700
CHIPSET
Intel H610 Chipset
MEMORY
2x DDR4 memory slots, support up to 64GB
Supports 1R 2133/ 2666/ 3200 MHz (by JEDEC & POR)
Supports Dual-Channel mode
Supports non-ECC, un-buffered memory
EXPANSION SLOT
1x PCIe x16 slot (From CPU)
Supports up to PCIe 4.0 x16
1x PCIe x1 slot (From H610 chipset)
Supports PCIe 3.0 x1
ONBOARD GRAPHICS
1x HDMI 1.4 with HDR port, supporting a maximum resolution of 4K 30Hz
1x VGA port, supporting a maximum resolution of 2048x1536 50Hz, 2048x1280 60Hz, 1920x1200 60Hz
SATA PORTS
4x SATA 6Gb/s ports (From H610 chipset)
M.2 SSD SLOT
1x M.2 slot (Key M) (from CPU)
Supports up to PCIe 3.0 x4
Supports up to SATA 6Gb/s
Supports 2242/ 2260/ 2280 storage devices
AUDIO
Realtek ALC897 Codec
7.1-Channel High Definition Audio
LAN
1x Realtek RTL8111H 1Gbps LAN controller
POWER CONNECTORS
1x 24-pin ATX main power connector
1x 8-pin +12V power connector
INTERNAL USB CONNECTORS
1x USB 3.2 Gen 1 5Gbps connector (From H610 chipset)
Supports additional 2 USB 3.2 Gen 1 5Gbps ports
2x USB 2.0 Type-A connectors (From Hub-GL850G)
Supports additional 4 USB 2.0 ports
FAN CONNECTORS
1x 4-pin CPU fan connector
2x 4-pin system fan connectors
DIMENSIONS
M-ATX Form Factor
23.6 cm x 20 cm"
WHERE id = 4;

select count(*) as count from products;


insert into products (name, price, stock, category_id, image_url, likes, specs, warranty, description)
values 	("Asus ROG i5 12400f", 1300, 12, 1, "slika1.jpg", 3, "Podnožje: Intel LGA1700;Vrsta memorije: DDR4", 24, "PROCESSOR
Support Intel Core 14th/ 13th/ 12th Gen Processors, Intel Pentium Gold and Celeron Processors
Processor socket LGA1700
CHIPSET
Intel H610 Chipset
MEMORY
2x DDR4 memory slots, support up to 64GB
Supports 1R 2133/ 2666/ 3200 MHz (by JEDEC & POR)
Supports Dual-Channel mode
Supports non-ECC, un-buffered memory
EXPANSION SLOT
1x PCIe x16 slot (From CPU)
Supports up to PCIe 4.0 x16
1x PCIe x1 slot (From H610 chipset)
Supports PCIe 3.0 x1
ONBOARD GRAPHICS
1x HDMI 1.4 with HDR port, supporting a maximum resolution of 4K 30Hz
1x VGA port, supporting a maximum resolution of 2048x1536 50Hz, 2048x1280 60Hz, 1920x1200 60Hz
SATA PORTS
4x SATA 6Gb/s ports (From H610 chipset)
M.2 SSD SLOT
1x M.2 slot (Key M) (from CPU)
Supports up to PCIe 3.0 x4
Supports up to SATA 6Gb/s
Supports 2242/ 2260/ 2280 storage devices
AUDIO
Realtek ALC897 Codec
7.1-Channel High Definition Audio
LAN
1x Realtek RTL8111H 1Gbps LAN controller
POWER CONNECTORS
1x 24-pin ATX main power connector
1x 8-pin +12V power connector
INTERNAL USB CONNECTORS
1x USB 3.2 Gen 1 5Gbps connector (From H610 chipset)
Supports additional 2 USB 3.2 Gen 1 5Gbps ports
2x USB 2.0 Type-A connectors (From Hub-GL850G)
Supports additional 4 USB 2.0 ports
FAN CONNECTORS
1x 4-pin CPU fan connector
2x 4-pin system fan connectors
DIMENSIONS
M-ATX Form Factor
23.6 cm x 20 cm" );



