/*
------------------------------------------------------------
Problem:
LeetCode SQL50 2356 - Number of Unique Subjects Taught by Each Teacher

Difficulty:
Easy

Concepts:
GROUP BY
COUNT
DISTINCT

Approach:
Group the Teacher table by teacher_id and count the distinct subject_id for each teacher.
*/

select teacher_id, count(distinct subject_id) as cnt
from Teacher
group by teacher_id;