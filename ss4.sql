create database ss4;
use ss4;

create table class(
ClassID int not null auto_increment primary key,
ClassName varchar(60) not null,
StartDate datetime not null,
Status bit
);

create table Student(
StudentID int not null auto_increment primary key,
StudentName varchar(30) not null,
Address varchar(50),
Phone varchar(20),
Status bit,
ClassID int not null,
foreign key(ClassID) references class(ClassID)
);

CREATE TABLE Subject
(
    SubId   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubName VARCHAR(30) NOT NULL,
    Credit  TINYINT     NOT NULL DEFAULT 1 CHECK ( Credit >= 1 ),
    Status  BIT                  DEFAULT 1
);

INSERT INTO Class
VALUES (1, 'A1', '2008-12-20', 1);
INSERT INTO Class
VALUES (2, 'A2', '2008-12-22', 1);
INSERT INTO Class
VALUES (3, 'B3', current_date, 0);

INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (StudentName, Address, Status, ClassId)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO Subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
       
 INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select * from subject
where subject.credit in (
select max(credit) from subject
);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select subject. *, mark.mark as diemlonnhat
from subject join mark on subject.subID = mark.subID
having diemlonnhat >= all(select mark from mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần.
select s.* , avg(m.mark) as diemtrungbinh
from student s join mark m on s.studentID = m.studentID
group by s.studentID, s.studentName
order by diemtrungbinh desc;




