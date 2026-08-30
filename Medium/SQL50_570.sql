/*
------------------------------------------------------------
Problem:
LeetCode SQL50  570 - Manager with at least 5 direct reports

Difficulty:
Medium

Concepts:
Self join ,aggragate filter

Approach:
Self join the Employee table to itself on managerId to id and applying aggerate filter of count>=5

------------------------------------------------------------
*/

select e2.name
from Employee as e1
join Employee as e2
on e1.managerId = e2.id
group by e2.Id,e2.name
having count(e2.Id) >=5;