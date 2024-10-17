# Write your MySQL query statement below
WITH first_log AS (
    SELECT player_id, MIN(event_date) AS first_login_date
    FROM Activity 
    GROUP BY player_id
)

SELECT ROUND(SUM(DATEDIFF(a.event_date, f.first_login_date) = 1) / COUNT(DISTINCT a.player_id), 2) AS fraction
FROM Activity a
JOIN first_log f ON a.player_id = f.player_id;