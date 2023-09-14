SELECT u.city, CASE WHEN t.status = 'Completed' THEN COUNT(t.status) END AS total_orders
FROM trades t
JOIN users u
ON t.user_id = u.user_id
GROUP BY u.city, t.status
ORDER BY COUNT(t.status) DESC
LIMIT 3;
