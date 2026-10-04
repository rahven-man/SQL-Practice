/*
------------------------------------------------------------
Problem:
LeetCode SQL50  1174 - Immediate Food Delivery 2
Difficulty:
Medium

Concepts:
Subquery, Aggregation, Conditional Logic

Approach:
Use a subquery to find the first order date for each customer, then calculate the percentage of orders that were delivered immediately.

------------------------------------------------------------
*/

select round(avg(order_date = customer_pref_delivery_date)*100,2) as immediate_percentage
from Delivery
where (customer_id,order_date) in (
    select customer_id , min(order_date)
    from Delivery
    group by customer_id
);