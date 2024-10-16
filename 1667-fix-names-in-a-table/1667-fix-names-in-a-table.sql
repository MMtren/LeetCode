# Write your MySQL query statement below
SELECT user_id, CONCAT(LEFT(UPPER(name),1), RIGHT(LOWER(name),LENGTH(name)-1)) AS name
FROM Users
ORDER BY user_id