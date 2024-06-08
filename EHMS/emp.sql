drop database emp;
create database emp;
create table emp.empdetails(
empid int primary key ,empname varchar(20) not null ,
empphonenumber varchar(10) unique key not null,
empcity varchar(20)  DEFAULT 'chennai'
);
create table emp.empsalary(
empid int, empexp int default'0',
empsalary double,
CONSTRAINT compkey foreign key(empid) 
references empdetails(empid)
);
insert into emp.empdetails(empid,empname,empphonenumber,empcity)
values
(1,'vedha',9342205953,'coimbatore'),
(2,'shaam',1234567890)
;
select*from emp.empdetails;