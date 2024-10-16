# Write your MySQL query statement below
SELECT e2.employee_id, e2.name, COUNT(e1.reports_to) AS'reports_count' , ROUND(AVG(e1.age)) AS 'average_age'
FROM Employees e1, Employees e2
WHERE e1.reports_to = e2.employee_id
GROUP BY e2.employee_id
ORDER BY e2.employee_id