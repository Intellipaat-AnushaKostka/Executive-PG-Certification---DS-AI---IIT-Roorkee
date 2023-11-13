

-- Assignment 4

-- 1. Use the inbuilt functions and find the minimum, maximum and average amount from the orders table

select max(amount) as max_amount,
min(amount) as min_amount,
avg(amount) as avg_amount from Orders

-- 2. Create a user-defined function which will multiply the given number with 10

create function a(@num int)
returns int
as begin
return @num*10
end

select dbo.a(5)as multiply


-- 3. Use the case statement to check if 100 is less than 200, greater than 200 or equal to 200 and print the corresponding value.

select case
when 100 < 200 then '100 is less than 200'
when 100 > 200 then 'greater than 200'
else 'equal to 200'
end

-- 4. Using a case statement, find the status of the amount. Set the status of the amount as high amount, low amount or 
-- medium amount based upon the condition.

select * from Orders

select *, case
when amount > 3000 then 'higher amount'
when amount < 3000 then 'lower amount'
else 'medium amount' 
end as amount_category from Orders


-- 5. Create a user-defined function, to fetch the amount greater than then given input.

create function greater(@num int)
returns table
as return(select * from Orders where amount > @num)

select * from greater(3000)

select * from Orders












