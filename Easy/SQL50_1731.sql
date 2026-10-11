/*
------------------------------------------------------------
Problem:
LeetCode SQL50  1731 - The Number of Employees Which Report to Each Employee

Difficulty:
Easy

Concepts:
- JOIN
- GROUP BY
- COUNT
- AVG   

Approach:
Join the Employees table with itself to find the relationship between employees and their managers. Then, group by the manager's ID and count the number of employees reporting to each manager. Finally, calculate the average age of these employees.
------------------------------------------------------------
*/

select refer.employee_id , refer.name ,refer.reports_count,refer.average_age
from (
    select e2.employee_id,e2.name ,count(distinct e1.employee_id) as reports_count,round(avg(e1.age),0) as average_age
    from Employees as e1
    join Employees as e2
    on e1.reports_to = e2.employee_id
    group by e2.employee_id
) as refer
where refer.reports_count >0;