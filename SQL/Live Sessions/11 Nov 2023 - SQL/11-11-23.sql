--Assignment 3

/*1. Create an ‘Orders’ table which comprises of these columns: ‘order_id’,
‘order_date’, ‘amount’, ‘customer_id’. */

create table Orders(Orders_id int,orders_date date,amount int,customer_id int);

select * from Orders

--2. Insert 5 new records

insert into orders values (101,'2023-11-11',8000,1),
(102,'2023-10-19',9000,8),
(103,'2022-12-18',7000,2),
(104,'2020-08-19',28000,7),
(105,'2021-09-27',18000,3)

create table customer(customer_id int,name varchar(20),address varchar(20),email varchar(30))

insert into customer values (1,'Kirti','123,victori palace','kk@gmail.com'),
(2,'sabarish','78 street ','sk@gmail.com'),
(3,'ganagdhar','123,victori palace','gg@gmail.com'),
(4,'hari','123,victori palace','hari@gmail.com'),
(5,'nitish','123,victori palace','nti@gmail.com')

select * from customer
select * from Orders

--3. Make an inner join on ‘Customer’ and ‘Orders’ tables on the ‘customer_id’ column.

select * from customer c inner join Orders o on c.customer_id=o.customer_id

--4. Make left and right joins on ‘Customer’ and ‘Orders’ tables on the‘customer_id’

select * from customer c left join Orders o on c.customer_id=o.customer_id

select * from customer c right join Orders o on c.customer_id=o.customer_id

--5. Make a full outer join on ‘Customer’ and ‘Orders’ table on the ‘customer_id’ column.


select * from customer c full join Orders o on c.customer_id=o.customer_id

--6. Update the ‘Orders’ table and set the amount to be 100where‘customer_id’ is 3.

update orders set amount=100 where customer_id=3