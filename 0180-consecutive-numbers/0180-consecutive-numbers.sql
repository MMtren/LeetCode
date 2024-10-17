# Write your MySQL query statement below
SELECT DISTINCT n1.num AS ConsecutiveNums
FROM Logs n1 
JOIN Logs n2 ON  n1.num = n2.num AND n1.id = n2.id-1
JOIN Logs n3 ON  n2.num = n3.num AND n2.id = n3.id-1