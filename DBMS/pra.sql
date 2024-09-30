create database Joins;
use Joins;
-- INNER JOIN
-- Enlist all  the employees id's ,names , along with the project allocated to them.
-- Featch out all   the employee ID's and their contacts details who have been working
-- from jaipur with the client name working in Hyderabad.

create table Employee(

id int primary key not null,
fname varchar(50) ,
lname varchar(50),
age int,
emailID varchar(100),
phoneNo varchar(30),
city varchar(40)

);

Insert into Employee( id,fname,lname,age,emailId,phoneNo,city) values
(1,'Aman','Proto',30,'aman@gmail.com','98709087','Delhi'),
(2,'Yagya','Narayan',32,'Yagya@gmail.com','4568087','Mumbail'),
(3,'Ravi','ghode',34,'ravi@gmail.com','97894568','Satara'),
(4,'Tejas','Dubal',30,'tejas@gmail.com','098776','Pune');

select * from employee;

create Table Product(
id int  Primary key not null,
studentinfo

);


use youtube;
select * from studentinfo;

alter Table image modify pic longblob;
desc image;
select * from image;