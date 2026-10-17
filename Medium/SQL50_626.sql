/*
------------------------------------------------------------
Problem:
LeetCode SQL50 - 626 - Exchange Seats

Difficulty:
Medium

Concepts:
- CASE
- ORDER BY

Approach:
Use a CASE statement to determine the new seat ID for each student based on their current ID, and then order the results by the new ID.
------------------------------------------------------------
*/

select 
    case 
    when id%2 != 0 and id = (select max(id) from Seat) then id
    when id%2 = 0 then id-1
    else id+1
    end as id,
    student
from Seat
order by id ASC; 