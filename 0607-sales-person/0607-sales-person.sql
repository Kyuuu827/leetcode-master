# Write your MySQL query statement below
# SELECT sp.name
# FROM SalesPerson sp
# LEFT JOIN (SELECT * FROM Orders GROUP BY sales_id HAVING com_id != 1) o ON o.sales_id = sp.sales_id
# WHERE o.com_id != 1 OR o.sales_id is NULL;

SELECT name 
FROM SalesPerson
WHERE sales_id NOT IN (
    SELECT sales_id FROM Orders 
    WHERE com_id IN (
        SELECT com_id FROM Company WHERE name = 'RED')
)