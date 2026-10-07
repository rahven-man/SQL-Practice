/*
------------------------------------------------------------
Problem:
LeetCode SQL50  1141 - User Activity for the Past 30 Days I
Difficulty:
Easy

Concepts:
LEFT JOIN, GROUP BY, COUNT

Approach:
Filter the Activity table for records within the last 30 days, then group by activity_date and count the distinct user_ids.
------------------------------------------------------------
*/

select activity_date as day , count(distinct user_id) as active_users
from Activity
where activity_date between '2019-06-28' and '2019-07-27'
group by activity_date;