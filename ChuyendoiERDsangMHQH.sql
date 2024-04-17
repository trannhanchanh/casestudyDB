create database QuanLyDonHang;
use quanLyDonHang;
create table PhieuXuat(
SoPX int primary key,
NgayXuat date
);
create table VatTu(
MaVTU int primary key,
TenVTU varchar(50)
);
create table PHIEUNHAP(
SoPN int primary key,
NgayNhap date
);
create table DonDH(
SoDH int primary key,
NgayDH date
);
create table NHACC(
MaNCC int primary key,
TenNCC varchar(50),
DiaChi varchar(50),
SĐT int
);
create table chi_tiet_phieu_xuat(
DGXuat int,
SLXuat int,
SoPX int,
MaVTU int,
primary key(SoPX, MaVTU),
foreign key(SoPX) references PhieuXuat(SoPX),
foreign key(MaVTU) references VatTu(MaVTU)
);
create table chi_tiet_phieu_nhap(
DGNhap int,
SLNhap int,
MaVTU int,
SoPN int,
primary key(MaVTU, SoPN),
foreign key(MaVTU) references VatTu(MaVTU),
foreign key(SoPN) references PHIEUNHAP(SoPN)
);
create table chi_tiet_don_dat_hang(
MaVTU int,
SoDH int,
primary key(MaVTU, SoDH),
foreign key(MaVTU) references VatTu(MaVTU),
foreign key(SoDH) references DonDH(SoDH)
);
create table cung_cap(
SoDH int,
MaNCC int,
primary key(SoDH, MaNCC),
foreign key(SoDH) references DonDH(SoDH),
foreign key(MaNCC) references NHACC(MaNCC)
);





