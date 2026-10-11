/*
------------------------------------------------------------
Problem:
LeetCode SQL50  1789 - Primary Department for Each Employee
Difficulty:
Easy

Concepts:
- JOIN
- GROUP BY  

Approach:
Find the primary department for each employee by selecting the department with the 'Y' primary_flag, or if no such department exists, select the only department the employee belongs to.
------------------------------------------------------------
*/

select employee_id, department_id
from Employee
where primary_flag='Y' or
employee_id in (
    select employee_id
    from Employee
    group by employee_id
    having count(department_id) =1
);