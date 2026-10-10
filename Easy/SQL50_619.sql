/*
------------------------------------------------------------
Problem:
LeetCode SQL50  619 - Biggest single number

Difficulty:
Easy

Concepts:
Grouping
Aggregation

Approach: First, we need to filter the numbers that appear only once in the table. Then, we select the maximum of these filtered numbers.

------------------------------------------------------------
*/

select max(num) as num
from (
    select num
    from MyNumbers
    group by num
    having count(num) =1
) as filter;