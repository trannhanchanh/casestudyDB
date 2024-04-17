create database retake;
use retake;


create table MatBang(
id int primary key auto_increment,
idMatBang varchar(100),
status varchar(100),
dientich float,
tang int,
loaimatbang varchar(100),
price float,
start_date date,
end_date date
);
create table LoaiMatBang(
idMatBang varchar(100) primary key,
loaimatbang varchar(100)
);
select mb.id,mb.status,mb.dientich,mb.tang,mb.price, mb.start_date, mb.end_date, lmb.loaimatbang from MatBang mb join LoaiMatBang lmb on mb.idMatBang = (lmb.idMatBang);
select mb.id,mb.status,mb.dientich,mb.tang,mb.price, mb.start_date, mb.end_date, lmb.loaimatbang from MatBang mb join LoaiMatBang lmb on mb.idMatBang= (lmb.idMatBang);


