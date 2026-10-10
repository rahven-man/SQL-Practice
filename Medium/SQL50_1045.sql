/*
------------------------------------------------------------
Problem:
LeetCode SQL50  1045 - Customers Who Bought All Products

Difficulty:
Medium

Concepts:
- GROUP BY
- HAVING

Approach: First, we need to group the customers by their ID. Then, we need to filter the groups where the count of distinct product keys is equal to the total count of products.
------------------------------------------------------------
*/

select customer_id
from Customer
group by customer_id
having count(distinct product_key) = (select count(*) from Product);