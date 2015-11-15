create database program4;
use program4;
# absolute function ...
select abs(-2100);

#ceiling function...
select ceil(8.23);
#floor math function.. 
select floor(8.23);
#exp function.... returns e power n for exp(n)..
select exp(2);
#..returns m%n for mod(m,n),....
select mod(5,8);
#
select round(7.34800);
#
select truncate(7.3957638,3);
#
select sqrt(25);
#
create table numbers(name varchar(2),value int(3));
insert into numbers
	values
		("a",23),
		("b",22),
        ("c",28),
        ("d",20),
        ("f",21);
#finding the average of values        
select avg(value) from numbers;
#finding the maximum value
select max(value) from numbers;
#finding the minimum value
select min(value) from numbers;
#finding the sum of all values
select sum(value) from numbers;

#miscellaneous functions... 
select user();
select version();
#char functions..
#lower case converter
select lower("AbcDE");
select upper("AbcDE");

select ltrim("  may");
select rtrim("may   ");
select replace("Ajay Negi","Ajay","Tanzin");

#date functions...
select last_day(1994-05-13);
