# Write your MySQL query statement below
SELECT id, 
    SUM(CASE WHEN month = 'JAN' THEN revenue ELSE NULL END) as Jan_Revenue,
    SUM(CASE WHEN month = 'FEB' THEN revenue ELSE NULL END) as Feb_Revenue,
    SUM(CASE WHEN month = 'MAR' THEN revenue ELSE NULL END) as Mar_Revenue,
    SUM(CASE WHEN month = 'APR' THEN revenue ELSE NULL END) as Apr_Revenue,
    SUM(CASE WHEN month = 'MAY' THEN revenue ELSE NULL END) as May_Revenue,
    SUM(CASE WHEN month = 'JUN' THEN revenue ELSE NULL END) as Jun_Revenue,
    SUM(CASE WHEN month = 'JUL' THEN revenue ELSE NULL END) as Jul_Revenue,
    SUM(CASE WHEN month = 'AUG' THEN revenue ELSE NULL END) as Aug_Revenue,
    SUM(CASE WHEN month = 'SEP' THEN revenue ELSE NULL END) as Sep_Revenue,
    SUM(CASE WHEN month = 'OCT' THEN revenue ELSE NULL END) as Oct_Revenue,
    SUM(CASE WHEN month = 'NOV' THEN revenue ELSE NULL END) as Nov_Revenue,
    SUM(CASE WHEN month = 'DEC' THEN revenue ELSE NULL END) as Dec_Revenue
FROM Department
GROUP BY id;