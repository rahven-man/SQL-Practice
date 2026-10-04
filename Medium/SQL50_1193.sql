/*
------------------------------------------------------------
Problem:
LeetCode SQL50  1193 - Monthly Transactions I
Difficulty:
Medium

Concepts:
Complex multiple case based aggregations , groupby

Approach:
Use date_format to extract the year and month from the trans_date column, then group by the resulting month and country to calculate the required aggregations.

------------------------------------------------------------
*/

select date_format(T.trans_date,"%Y-%m") as month,
T.country ,count(T.id) as trans_count,
count(case when T.state='approved' then 1 end) as approved_count,
sum(T.amount) as trans_total_amount,
sum(case when T.state='approved' then T.amount else 0 end) as approved_total_amount
from Transactions as T
group by month,T.country;