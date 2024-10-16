# Write your MySQL query statement below
SELECT *, 
       IF((x + y > z) AND (x + z > y) AND (y + z > x) AND (x > 0 AND y > 0 AND z > 0), 'Yes', 'No') AS triangle
FROM Triangle;