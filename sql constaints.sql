-- sql constaints

create table sql_constaint(
id int primary key auto_increment,
name varchar(30)not null,
email varchar (40) unique,
location varchar(20) default "Bengaluru",
age int check (age>18)
);

insert into sql_constaint (name, email,age)
values
("ravi","ravi@gmail",23),
("raju","raj@gail", 25),
("manu","m@gail",19);

select * from sql_constaint;

-- foriegn key work
create table departments(
dptid int primary key,
depname varchar(50) not null
);

create table employee(
empid int primary key,
name varchar(50) not null,
dptid int,
foreign key(dptid) references departments(dptid)
);

insert into departments( dptid,depname)
values(01,"hr"),
(02,"market"),
(03,"finance");

insert into employee(empid,
name, dptid) values(101,"ram",1),
(102,"sham",2),
(103,"shm",3),
(104,"sharu",2),
(105,"sham",1);

select * from employee;
select * from departments;

-- these keys are restrict the data which we insert wrong data which means which is not safisfied rukles
-- in that time that query is not execute


