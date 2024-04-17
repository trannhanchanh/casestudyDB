create database quanlybanhang;
use quanlybanhang;
create table Customer(
cID int auto_increment primary key,
cName varchar(50),
cAge int
);
create table yeucau(
oID int primary key,
cID int,
oDate date,
foreign key(cID) references Customer(cID)
);
create table sanpham(
pID int primary key,
pName varchar(50),
pPrice float
);
create table OrderDetail(
oID int,
pID int,
odQTY int,
primary key(oID, pID),
foreign key(oID) references yeucau(oID),
foreign key(pID) references sanpham(pID)
);

insert into Customer 
values(1, 'Minh Quan', 10);
insert into Customer 
values(2, 'Ngoc Oanh', 20);
insert into Customer 
values(3, 'Hong Ha', 50);

insert into yeucau
values(1, 1, '2006-03-21');
insert into yeucau
values(2, 2, '2006-03-23');
insert into yeucau
values(3, 1, '2006-03-16');
alter table yeucau add column oTotalPrice int;

insert into sanpham
values(1, 'May Giat', 3);
insert into sanpham
values(2, 'Tu Lanh', 5);
insert into sanpham
values(3, 'Dieu Hoa', 7);
insert into sanpham
values(4, 'Quat', 1);
insert into sanpham
values(5, 'Bep Dien', 2);

insert into orderdetail
values(1, 1, 3);
insert into orderdetail
values(1, 3, 7);
insert into orderdetail
values(1, 4, 2);
insert into orderdetail
values(2, 1, 1);
insert into orderdetail
values(3, 1, 8);
insert into orderdetail
values(2, 5, 4);
insert into orderdetail
values(2, 3, 3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select oID, oDate, oTotalPrice from yeucau;
-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT c.Name as CustomerName, 
       GROUP_CONCAT(p.pName) as PurchasedProducts
FROM Customer c
JOIN yeucau o ON c.cID = o.cID
JOIN OrderDetail od ON o.oID = od.oID
JOIN sanpham p ON od.pID = p.pID;
 -- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào








-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)

