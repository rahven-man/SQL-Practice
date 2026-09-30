/*
------------------------------------------------------------
Problem:
LeetCode SQL50  197 - Rising Temperature

Difficulty:
Easy

Concepts:
simple join, and using datediff function

Approach:

------------------------------------------------------------
*/

select w1.id 
from Weather w1
join Weather w2 
on datediff(w1.recordDate,w2.recordDate)=1
where w1.temperature > w2.temperature;