/*
------------------------------------------------------------
Problem:
LeetCode SQL50   1164 - Product Price at a given Date

Difficulty:
Medium

Concepts:
- Window functions

Approach: Use the MAX function with a window frame to find the most recent price for each product before the given date.

------------------------------------------------------------
*/

select product_id, new_price as price
from Products
where (product_id,change_date) in
    (
     select product_id, max(change_date)
     from Products
     where change_date <= '2019-08-16'
     group by product_id
    )
union
select product_id,10 as price
from Products
group by product_id
having min(change_date)> '2019-08-16';