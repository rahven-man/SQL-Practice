/*
------------------------------------------------------------
Problem:
LeetCode SQL50  610 - Triangle Judgement
Difficulty:
Easy

Concepts: 
  - CASE statement
  - Conditional logic

Approach: Use a CASE statement to evaluate the triangle inequality theorem for each set of three sides.

------------------------------------------------------------
*/

select x,y,z,
CASE 
    WHEN x + y > z AND y + z > x AND z + x > y THEN 'Yes'
    ELSE 'No' 
END as triangle
from Triangle;