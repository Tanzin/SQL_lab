create database program2;
use program2;
show tables;

create table student
	(rolno int(5) primary key,dept varchar(20) not null,yearno int(1) not null);
#queries..
#1. insert more than one record in one go.
insert into student
	values
		(13501,"CSE",3),
        (13101,"CE",3),
        (13201,"EEE",3),
        (13301,"ME",3),
        (13401,"ECE",3),
        (13601,"CEM",3),
        (12505,"CSE",4),
        (14108,"CE",2),
        (15201,"EEE",1),
        (13309,"ME",3),
        (13408,"ECE",3),
        (14601,"CEM",2);
        
#2. update the table to set year = 2015 of all cse students.
SET SQL_SAFE_UPDATES = 0;

update student set yearno = 2015 where dept = "CSE";
select * from student;

#3. create another table stud same as student, insert rows using select clause.

create table stud as select * from student;

#4. delete all ece records.
delete from student where dept = "ECE";

#5. list record in ascending order of year.
select * from stud
	order by yearno;
    
#6. display names from table avoiding duplicates.
select distinct dept from student;
