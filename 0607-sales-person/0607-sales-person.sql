# Write your MySQL query statement below
SELECT DISTINCT sp.name 
FROM SalesPerson sp
LEFT JOIN Orders o ON sp.sales_id = o.sales_id
WHERE sp.sales_id NOT IN(
SELECT o.sales_id
FROM Orders o
INNER JOIN Company c ON c.com_id = o.com_id
WHERE c.name = 'RED')