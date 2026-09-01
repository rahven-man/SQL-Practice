/*
------------------------------------------------------------
Problem:
LeetCode SQL50  1934 - Confirmation Rate

Difficulty:
Medium

Concepts:
LEFT JOIN

Approach:
left join Confirmations on Signups table , , use round,ifnull,avg like commulative functions to 
calculate confirmation rate on grouped user_id.
------------------------------------------------------------
*/


select s.user_id, round(ifnull(avg(case when c.action = "confirmed" then 1 else 0 end),0),2) as confirmation_rate
from Signups as s
left join Confirmations as c
on s.user_id = c.user_id
group by s.user_id;