/*
------------------------------------------------------------
Problem:
LeetCode SQL50  1978 - Employees whose manager left the company
Difficulty:
Easy

Concepts:
- JOIN



Approach:
Find employees whose managers have left the company by joining the Employees table with itself on the manager_id column, and filtering for employees with a non-null manager_id that does not correspond to an existing employee.
------------------------------------------------------------
*/
SELECT e1.employee_id
FROM Employees e1
LEFT JOIN Employees e2 
    ON e1.manager_id = e2.employee_id
WHERE e1.salary < 30000 
  AND e1.manager_id IS NOT NULL 
  AND e2.employee_id IS NULL
ORDER BY e1.employee_id;