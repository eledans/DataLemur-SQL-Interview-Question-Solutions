SELECT sender_id, COUNT(message_id) AS message_count
FROM messages
WHERE DATE_PART('month', sent_date) = 08 AND DATE_PART('year', sent_date) = 2022
GROUP BY sender_id
ORDER BY COUNT(message_id) DESC
LIMIT 2;
