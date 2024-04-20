create database ss2_convertERDtoRelative;
use ss2_convertERDtoRelative;

create table phieuxuat(
sopx int primary key auto_increment,
ngayxuat date
);

create table vattu(
mavtu int primary key auto_increment,
tenvtu varchar(100)
);

create table chitietphieuxuat(
maphieuxuat int,
sopx int,
mavtu int,
dgxuat int,
slxuat int,
primary key(mavtu, sopx),
foreign key(mavtu) references vattu(mavtu),
foreign key(sopx) references phieuxuat(sopx)
);

create table phieunhap(
sopn int primary key auto_increment,
ngaynhap date
);

create table chitietphieunhap(
maphieunhap int,
dgnhap int,
slnhap int,
mavtu int,
sopn int,
primary key(mavtu, sopn),
foreign key(mavtu) references vattu(mavtu),
foreign key(sopn) references phieunhap(sopn)
);

create table nhacc(
mancc int primary key auto_increment,
tenncc varchar(100),
diachi varchar(100),
sdt varchar(100)
);

create table dondh(
sodh int primary key auto_increment,
ngaydh date,
mancc int,
foreign key(mancc) references nhacc(mancc)
);

create table chitietdondathang(
madondathang int,
mavtu int,
sodh int,
primary key(mavtu, sodh),
foreign key(mavtu) references vattu(mavtu),
foreign key(sodh) references dondh(sodh)
);

create table sodienthoai(
sdtid int primary key auto_increment,
sdt varchar(10),
mancc int unique,
foreign key(mancc) references nhacc(mancc)
);


