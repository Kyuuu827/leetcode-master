# Write your MySQL query statement below
SELECT e.event_day AS day,
       e.emp_id,
       SUM(e.out_time - e.in_time) AS total_time
FROM Employees e
GROUP BY e.emp_id, e.event_day
ORDER BY e.event_day;