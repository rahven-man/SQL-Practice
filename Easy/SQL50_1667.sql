/*
------------------------------------------------------------
Problem:
LeetCode SQL50  1667. Fix Names in a Table

Difficulty:
Easy

Concepts:
String manipulation functions (UPPER, LOWER, LEFT, SUBSTRING)
Approach:
Use the UPPER and LOWER functions to capitalize the first letter and make the rest of the letters lowercase.
------------------------------------------------------------
*/
select user_id,
concat(
    upper(left(name,1)),
    lower(substring(name,2))
) as name
from Users
order by user_id;