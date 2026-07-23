/*
------------------------------------------------------------
Problem:
LeetCode SQL50  1581 - Customer Who Visited but Did Not Make Any Transactions

Difficulty:
Easy

Concepts:
LEFT JOIN, GROUP BY, COUNT

Approach:
left Join Visits and Transactions on visit_id with filter as Transactions.transaction_id is null.
group by using customer_id and aggregate the count of visit_id.


------------------------------------------------------------
*/

select customer_id , count(Visits.visit_id) as count_no_trans
from Visits
left join Transactions
on Visits.visit_id = Transactions.visit_id
where Transactions.transaction_id is null
group by customer_id;