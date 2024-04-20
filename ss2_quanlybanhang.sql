create database ss2_quanlybanhang;
use ss2_quanlybanhang;

create table customer(
cID int primary key auto_increment,
cName varchar(100) not null,
cAge int not null check(cAge between 1 and 100)
);

create table product(
pID int primary key auto_increment,
pName varchar(100) not null,
pPrice int not null check(pPrice > 0)
);

create table yeucau(
oID int primary key auto_increment,
cID int,
oDate date,
oTotalPrice int,
foreign key(cID) references customer(cID)
);

create table orderdetail(
odID int,
pID int,
oID int,
odQTY int,
primary key(pID, oID),
foreign key(pID) references product(pID),
foreign key(oID) references yeucau(oID)
); 

