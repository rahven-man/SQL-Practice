/*
------------------------------------------------------------
Problem:
LeetCode SQL50  620 - Not boring movies

Difficulty:
Easy

Concepts:
Aggregation

Approach:

------------------------------------------------------------
*/

select *
from Cinema
where id%2 <>0 and description <> "boring"
order by rating desc;