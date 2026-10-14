/*
------------------------------------------------------------
Problem:
LeetCode SQL50   180 - Consecutive Numbers

Difficulty:
Medium

Concepts:
- Window functions
- LEAD function

Approach:
Use the LEAD function to compare each number with the next two numbers in the ordered sequence. If a number is equal to both of its next two numbers, it is part of a consecutive sequence.
------------------------------------------------------------
*/

with nextnums as (
    select num,
    lead(num,1) over(order by id) as next1,
    lead(num,2) over(order by id) as next2
    from Logs
)
select distinct num as ConsecutiveNums
from nextnums
where num = next1 and num=next2;