# Write your MySQL query statement below
SELECT p.product_name, SUM(o.unit) unit
FROM Orders o
JOIN Products p ON p.product_id = o.product_id
WHERE o.order_date between '2020-02-01' and '2020-02-29'
GROUP BY o.product_id
HAVING SUM(o.unit) >= 100;