/*
------------------------------------------------------------
Problem:
LeetCode SQL50  185 - Department Top Three Salaries

Difficulty:
Hard

Concepts:
DENSE_RANK
OVER clause
PARTITION BY

Approach:
Use DENSE_RANK to rank employees within each department by salary, then filter for the top three.
------------------------------------------------------------
*/

select ranked_table.Department,ranked_table.Employee,ranked_table.Salary
from (
    select D.name as Department, E.name as Employee, E.salary as Salary,
    dense_rank() over(partition by D.name order by E.salary desc) as rnk 
    from Employee E
    join Department D
    on E.departmentId = D.id
) as ranked_table
where ranked_table.rnk < 4;