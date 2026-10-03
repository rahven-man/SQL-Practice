/*
------------------------------------------------------------
Problem:
LeetCode SQL50  1211 - Queries Quality and Percentage

Difficulty:
Easy

Concepts:
Aggregations, Groupby

------------------------------------------------------------
*/

select Q.query_name , ifnull(round(avg(Q.rating/Q.position),2),0) as quality,
ifnull(round(avg(case when Q.rating<3 then 1 else 0 end)*100,2),0) as poor_query_percentage
from Queries as Q
group by query_name;