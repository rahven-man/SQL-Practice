/*
------------------------------------------------------------
Problem:
LeetCode SQL50  1204 - Last Person to Fit in the Bus
Difficulty:
Medium

Concepts:
Window functions, cumulative sums
Approach:
Use a window function to calculate the cumulative sum of weights in the order of turns, and then select the last person whose cumulative weight is less than or equal to 1000.
------------------------------------------------------------
*/

with cte as (
    select person_id,person_name,weight,turn,sum(weight) over(order by turn) as total_weight
    from Queue
)
select person_name
from cte
where total_weight<=1000
order by turn desc
limit 1;