# Write your MySQL query statement below
SELECT m.name
FROM Employee e, Employee m
WHERE e.managerId = m.id
GROUP BY m.id
HAVING count(e.id) >=5