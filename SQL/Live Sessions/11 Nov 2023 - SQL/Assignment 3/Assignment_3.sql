
-- Assignment 3

-- 1. Create an ‘Orders’ table which comprises of these columns: ‘order_id’, ‘order_date’, ‘amount’, ‘customer_id’.

-- First Table Name: Orders 

/* Create the table Orders using the create command with the column names and their dta types */

create table Orders(order_id int, order_date date, amount int, customer_id int)

select * from Orders

-- 2. Insert 5 new records.

/* Insert 5 new records into the table Orders using the insert command */

insert into Orders values(001, '2020-01-01', 5000, 1),
						(002, '2023-02-03', 10000, 3),
						(003, '2022-05-21', 9000, 6),
						(004, '2021-06-28', 15000, 2),
						(005, '2022-09-12', 3000, 4)

/* Display all the records from the table Orders */

select * from Orders

/* Create the second table Customer  which comprises of these columns: 'customer_id', 'name', 'address', 'email'. */

-- Second Table Name: Customer 

create table Customer(customer_id int, name varchar(20), address varchar(20), email varchar(20))

select * from Customer

-- Insert 5 new records

/* Insert 5 new records into the table Customer using the insert command */

insert into Customer values(1, 'Anusha', 'Carls Street', 'anusha@gmail.com'),
						(2, 'Linda',  'Jacob Street', 'lin@gmail.com'),
						(3, 'Rini', 'Mount Carmel Road', 'rini@gmail.com'),
						(4, 'Neha', 'Hardiya Villa', 'Neha@yahoo.com'),
						(5, 'Anu', 'Nidhi Villa', 'anu@yahoo.com')

/* Display all the records from the table Customer */

select * from Customer
select * from Orders

-- 3. Make an inner join on ‘Customer’ and ‘Orders’ tables on the ‘customer_id’ column.

select * from Customer c inner join Orders o on c.customer_id = o.customer_id 

-- 4. Make left and right joins on ‘Customer’ and ‘Orders’ tables on the‘customer_id’ column.

select * from Customer c left join Orders o on c.customer_id = o.customer_id 

select * from Customer c right join Orders o on c.customer_id = o.customer_id 

-- 5. Make a full outer join on ‘Customer’ and ‘Orders’ table on the ‘customer_id’ column.

select * from Customer c full outer join Orders o on c.customer_id = o.customer_id 

-- 6. Update the ‘Orders’ table and set the amount to be 100 where‘customer_id’ is 3.

update Orders set amount = 100 where customer_id = 3

select * from Orders


