create database Final;
use Final;
create table Category(
category_id int primary key auto_increment,
category_danhmuc varchar(100)
);

create table Product(
id_product int primary key auto_increment,
name_product varchar(100),
price_product float,
quantity_product int,
color_product varchar(100),
description_product int,
foreign key(description_product) references Category(category_id)
);

insert into Category (category_id, category_danhmuc)  values
(1, 'Phone'), (2, 'Television');

insert into Product(id_product, name_product, price_product, quantity_product, color_product, description_product)
values(1, 'Iphone 11', 799.0, 12, 'Yellow', 1),
(2, 'Iphone 11 Pro', 1100.0, 12, 'Black', 1),
(3, 'Iphone X', 749.0, 13, 'Blue', 1),
(4, 'Smart TV màn hình cong 4K',10000000, 5, 'Black', 2),
(5, 'Samsung Galaxy S10', 420.0, 10, 'Prism White', 1); 

