/*
------------------------------------------------------------
Problem:
LeetCode SQL50 1070 - Product Sales Analysis 3

Difficulty:
Medium

Concepts: 
- WHERE clause
- IN operator
- Subquery
- GROUP BY
- MIN function

Approach:
Filter the Sales table for records where the (product_id, year) is in the result of a subquery that finds the minimum year for each product_id.
------------------------------------------------------------
*/

select product_id ,year as first_year, quantity, price
from Sales
where (product_id,year) in (
    select product_id,min(year)
    from Sales
    group by product_id
);