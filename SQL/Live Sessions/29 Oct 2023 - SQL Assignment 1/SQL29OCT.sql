--Tasks To Be Performed:

--1. Create a customer table which comprises of these columns: ‘customer_id’,
--‘first_name’, ‘last_name’, ‘email’, ‘address’, ‘city’,’state’,’zip’.

create database sql29oct

use sql29oct

Create table customer
(
customer_id int,
first_name varchar(20),
last_name varchar(20),
email varchar(30),
address varchar(30),
city varchar(20),
state varchar(20),
zip int
)

--2. Insert 5 new records into the table


insert into customer values
('kejrckjerwk','Sujeet','Kumar','sujeet@outlook.com','1st cross','Guwahati','Assam',688878),
(11,'Chirag','M M','chirag@outlook.com','1-677','Bangalore','Karnataka',892732),
(10,'Aman','Singh','aman123@outlook.com','1st cross','Bangalore','Karnataka',632878),
 (9,'Pravin','Singh','Pravin@gmail.com','1st Cross','Guwahati','Assam',734836),
 (2,'Aman','Singh','aman123@outlook.com','7th Block','Bangalore','Karnataka',293743),
 (4,'Gourav','Chopra','gourav@outlook.com','1 block','Patna','Bihar',987867),
 (6,'Govin','Singh','govin@gmail.com','12 th street','SanJose','LA',873467),
 (7,'Izhar','Ali','izhar12@outlook.com','5th Cross','Muradabad','UP',723567)


--3. Select only the ‘first_name’ and ‘last_name’ columns from the customer table

Select first_name,last_name from customer

--4. Select those records where ‘first_name’ starts with “G” and city is ‘SanJose’.

Select * from customer
where first_name like 'G%' and City like 'SanJose'

Select * from customer
where first_name like 'G%' and City= 'SanJose'

--5. Select those records where Email has only ‘gmail’.

Select * from customer 
where email like '%gmail%'

Select * from customer 
where email like '%outlook%'

--6. Select those records where the ‘last_name’ doesn't end with “A”.

Select * from customer
where last_name not like'%A'



