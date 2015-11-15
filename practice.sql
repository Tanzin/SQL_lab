create database practice;
use practice;

create table sailor( sail_id int, sail_name varchar(30),rating int, age int);

#this command is used to assign a column primary key propert after the table is already created
ALTER TABLE sailor
  ADD PRIMARY KEY (sail_id);
#this command is used to describe the structure of table..
describe sailor;
#create another table with foreign key referencin to primary key of table sailor..
create table reserve(sail_id int REFERENCES sailor(sail_id),boat_id int , pay int);
alter table reserve
	add primary key(boat_id);
describe reserve;
#creating next table
create table boat(boat_id int primary key references reserve(boat_id) ,
	boat_name varchar(10), 
    color varchar(10));

insert into sailor 
	values
		(101,"deshu",5,23),
        (102,"hashim",7,25),
        (103,"himesh",3,28),
        (104,"ali",9,20),
        (105,"shoyeb",4,22),
        (106,"toko",2,29);

insert into reserve
	values
		(101,201,45000),
        (101,202,45000),
        (102,203,40000),
        (102,204,45000),
        (103,205,20000),
        (103,206,20000),
        (104,207,42000),
        (105,208,22000),
        (106,209,49000);

insert into boat
	values
		(201,"chango","red"),
        (202,"zmr","green"),
        (203,"wrought","blue"),
        (204,"tweeky","red"),
        (205,"swift","green"),
        (206,"platinum","blue"),
        (207,"chrome","red"),
        (208,"power","green"),
        (209,"light","blue");
        
#now executing the queries....
#1. find the names of the sailors who reserved green boat.
select sail_name from sailor where sail_id in (select sail_id from reserve
	where boat_id in(select boat_id from boat where color = "green"));
    
#find color of boats reserved by hashim.
select color from boat where boat_id in(select boat_id from reserve where
	sail_id = (select sail_id from sailor where sail_name = "hashim"));
    
#find the names of sailor who have red or green boats.

select sail_name from sailor where sail_id in 
(select sail_id from reserve where boat_id in 
(select boat_id from boat where color in ("red","green")));
    