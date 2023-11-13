

-- Assignment 1

-- SQL Commands

-- Data Definition Language

-- Create Command - Creates a table 

create table Employee
					(emp_id int, 
					 ename varchar(20), 
					 age int, 
					 gender varchar(10), 
					 empaddress varchar(30), 
					 city varchar(20), 
					 salary int) 

-- Drop Command - deletes the table

drop table Employee

create table Employee(
					 Empid int,
					 FirstName varchar(20),
					 LastName varchar(30),
					 City char(255),
					 Department varchar(30),
					 DateofJoining date,
					 Salary decimal(8,2)
);


select * from Employee

-- Insert Command - insert values into the table

insert into Employee values(101, 'Anusha', 'Linda','Nagercoil', 'Biomedical', '2020-01-09', 30000.50)

select * from Employee

-- Alter Command - used to modify the database objects in the table 

-- Alter alter command

alter table Employee alter column Salary int
alter table Employee alter column FirstName varchar(30)

-- Alter Add Command

alter table Employee add Gender text

select * from Employee

-- Alter Rename Command

sp_rename 'Employee.Gender', 'Gen'

select * from Employee

-- Alter Drop Command

alter table Employee drop column Gen

select * from Employee

-- Rename - used to rename the table

sp_rename Employee, Emp_tbl

select * from Employee

select * from Emp_tbl

-- Drop Command - used to drop the table

drop table Emp_tbl

select * from Emp_tbl

-- Truncate Command - removes the data from the table

truncate table Employee

select * from Employee

-- Insert Command - inserts values into the table

insert into Employee values(102, 'Rini', 'Roy','Chennai', 'Biomedical', '2020-08-07', 25000.50),
							(103, 'Jeena', 'Mathew','Mumbai', 'Data Science', '2021-12-03', 50000.50),
							(104, 'Neha', 'Dupiya','Banglore', 'Computer Science', '2022-12-05', 45000.50),
							(105, 'Reema', 'Khanna','TVM', 'Communications', '2023-06-19', 15000.50)

select * from Employee

insert into Employee(Empid, FirstName, Department) values (107, 'Chippy', 'IT'),
														  (108, '', 'DBA')

select * from Employee

-- Update Command - used to update the data in the table

update Employee set City = 'Ernakulam' where FirstName = 'Reema'

select * from Employee

-- Delete Command - deletes data from table

delete from Employee where FirstName = 'Chippy'

select * from Employee
















