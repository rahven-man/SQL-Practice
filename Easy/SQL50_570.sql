/*
------------------------------------------------------------
Problem:
LeetCode SQL50  577 - Employee Bonus

Difficulty:
Easy

Concepts:
simple join, and multiple where conditions.
------------------------------------------------------------
*/
select e2.name
from Employee as e1
join Employee as e2
on e1.managerId = e2.id
group by e2.Id,e2.name
having count(e2.Id) >=5;
