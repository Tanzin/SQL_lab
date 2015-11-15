create database program3;
use program3;
create table department(deptno int(3),deptname varchar(5),deptloc varchar(30));
create table employee(empid int(3),empname varchar(10), empsal int(5));

insert into department
	values
		(100,"CE","near computer center"),
        (200,"EEE","near admin block"),
        (300,"ME","behind computer center"),
        (400,"ECE","near lecture hall"),
        (500,"CSE","near computer center"),
        (600,"CEM","near lecture hall"),
        (700,"ARC","behind workshop");

insert into employee
	values
		(901,"Suresh",75000),
        (902,"Ramesh",72000),
        (903,"Dinesh",77000),
        (904,"Venktesh",85000),
        (905,"Sarvesh",71000),
        (906,"klesh",79000);

#1. Grant and revoke all and some previlages.


#2. implement rollback and savepoint.