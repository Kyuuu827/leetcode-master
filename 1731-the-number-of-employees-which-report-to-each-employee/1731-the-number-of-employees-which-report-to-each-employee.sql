# Write your MySQL query statement below
SELECT e2.employee_id
     , e2.name
     , COUNT(e2.employee_id) AS reports_count
     , ROUND(AVG(e.age), 0) AS average_Age
FROM Employees e 
JOIN Employees e2 ON e.reports_to = e2.employee_id
GROUP BY e2.employee_id
ORDER BY e2.employee_id;

