/*
------------------------------------------------------------
Problem:
LeetCode SQL50  596 - Classes More Than 5 Students

Difficulty:
Easy

Concepts:
GROUP BY
HAVING
COUNT
DISTINCT

Approach:
Group the Courses table by class and filter for classes with at least 5 distinct students.

------------------------------------------------------------
*/

select class
from Courses
group by class
having count(distinct student) >= 5;