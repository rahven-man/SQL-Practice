/*
------------------------------------------------------------
Problem:
LeetCode SQL50  1068 - Product Sales Analysis I

Difficulty:
Easy

Concepts:
INNER JOIN

Approach:
join Sales and Product table on product_id

------------------------------------------------------------
*/

select Product.product_name ,Sales.year,Sales.price
from Sales
inner join Product
on Sales.product_id=Product.product_id;