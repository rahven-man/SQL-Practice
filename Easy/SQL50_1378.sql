/*
------------------------------------------------------------
Problem:
LeetCode SQL50  1378 - Replace Employee ID With The Unique Identifier

Difficulty:
Easy

Concepts:
LEFT JOIN

Approach:
left Join Employees and EmployeeUNI on id

------------------------------------------------------------
*/


select EmployeeUNI.unique_id ,Employees.name
from Employees
left join
EmployeeUNI
on Employees.id=EmployeeUNI.id;