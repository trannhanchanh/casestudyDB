create database product;
use product;

CREATE TABLE Manufactor (
    manufactor_id INT PRIMARY KEY AUTO_INCREMENT,
    manufactor_name VARCHAR(100)
);

CREATE TABLE Product (
    id_product INT PRIMARY KEY AUTO_INCREMENT,
    name_product VARCHAR(100),
    price_product FLOAT,
    description_product VARCHAR(100),
    manufactor_product VARCHAR(100)
);

insert into Manufactor(manufactor_id, manufactor_name) values
(1,'Apple'), (2, 'Samsung'), (3, 'Nokia'), (4, 'Xiaomi'), (5, 'LG');

insert into Product(id_product, name_product, price_product, description_product, manufactor_product)
values (1, 'Iphone', 5000000, 'Điện thoại', 'Apple'),
(2, 'Macbook', 7000000, 'Macbook Air2023', 'Apple'),
(3, 'Samsung S24', '1000000', 'Điện thoại', 'Samsung'),
(4, 'Xiaomi S20', 300000, 'Điện thoại', 'Xiaomi'),
(5, 'Apple Watch', 3000000, 'Đồng hồ', 'Apple'),
(6, 'LB Gram', 7500000, 'Laptop', 'LG');
