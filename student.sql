create database Student;
use Student;
create table Class(
class_id int primary key auto_increment,
class_name varchar(100)
);

create table Student(
id_student int primary key auto_increment,
name_student varchar(100),
date_student varchar(100),
id_class_student int,
foreign key (id_class_student) references Class(class_id)
);

insert into Class(class_id, class_name)
values(1, 'c0823g1_jv105'), (2, 'c1023g1'), (3, 'c1123g1');

insert into Student(id_student, name_student, date_student, id_class_student)
values(1, 'Chánh', '2002-11-27', 1),
(2, 'Hưng','2002-05-07', 2),
(3, 'Hoàng', '2002-10-08', 3);

select * from Student;




