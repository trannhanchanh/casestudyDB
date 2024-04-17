create database review;
use review;

create table Category(
id_category int primary key auto_increment,
ten_danh_muc varchar(100)
);
create table Product(
 id_product int primary key auto_increment,
 name varchar(100),
 gia float,
 soLuong int,
 color varchar(100),
 moTa varchar(100),
 id_category int,
 ten_danh_muc varchar(100)
 );
 