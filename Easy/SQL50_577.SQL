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

select Employee.name,Bonus.bonus
from Employee
left join Bonus on Employee.empId=Bonus.empId
where Bonus.bonus < 1000 or Bonus.bonus is null;