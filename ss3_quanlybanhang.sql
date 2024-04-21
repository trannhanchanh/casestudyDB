create database ss3_quanlybanhang;
use ss3_quanlybanhang;

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

insert into customer (cName, cAge)
values ('Minh Quan', 10), ('Ngoc Oanh', 20), ('Hong Ha', 50);


insert into yeucau(cID, oDate)
values(1, '2006-03-21'), (2, '2006-03-23'), (1, '2006-03-16');

insert into product(pName, pPrice) 
values('May Giat', 3), ('Tu Lanh', 5), ('Dieu Hoa', 7), ('Quat', 1), ('Bep Dien', 2);

insert into orderdetail(oID, pID, odQTY)
values(1, 1, 3), (1, 3, 7), (1, 4, 2), (2, 1, 1), (3, 1, 8), (2, 5, 4), (2, 3, 3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order.
select oID, oDate, oTotalPrice from yeucau;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách.
select c.cName, p.pName
from customer c join yeucau o on c.cID = o.cID
join orderdetail od on o.oID = od.oID
join product p on p.pID = od.pID;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào.
select c.cName
from customer c left join yeucau o on c.cID = o.cID
where o.cID is null;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
select o.oID , o.oDate, sum(p.pPrice* odQTY) as 'total price'
from yeucau o join orderdetail od on o.oID = od.oID
join product p on p.pID = od.pID
group by o.oID;

