# Write your MySQL query statement below
SELECT c.contest_id, ROUND( ( COUNT(c.user_id) / (SELECT COUNT(DISTINCT user_id) FROM Users) )*100, 2) AS percentage
FROM Register c
INNER JOIN Users u ON c.user_id=u.user_id
GROUP BY c.contest_id
ORDER BY percentage DESC, c.contest_id ASC