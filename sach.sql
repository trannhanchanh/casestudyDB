create database quan_ly_sach;
use quan_ly_sach;

create table sach(
ma_sach varchar(10) primary key,
ten_sach varchar(40),
tac_gia varchar(40),
mo_ta varchar(255),
so_luong int
);
create table hoc_sinh(
ma_hoc_sinh varchar(10) primary key,
ho_ten varchar(40),
lop varchar(10)
);
create table the_muon_sach(
id int primary key auto_increment,
ma_muon_sach varchar(10),
ma_sach varchar(10),
ma_hoc_sinh varchar(10),
trang_thai boolean,
ngay_muon date,
ngay_tra date,
foreign key (ma_sach) references sach(ma_sach),
foreign key (ma_hoc_sinh) references hoc_sinh(ma_hoc_sinh)
);