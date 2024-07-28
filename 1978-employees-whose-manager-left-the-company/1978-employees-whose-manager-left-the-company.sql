# Write your MySQL query statement below
SELECT e.employee_id
FROM Employees e
LEFT JOIN Employees e2 ON e2.employee_id = e.manager_id
WHERE e.salary < 30000 AND e.manager_id IS NOT NULL AND e2.employee_id IS NULL
ORDER BY e.employee_id;