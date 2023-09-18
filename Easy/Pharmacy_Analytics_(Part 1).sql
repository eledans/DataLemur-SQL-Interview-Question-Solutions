SELECT drug, (total_sales - cogs) AS total_profit
FROM pharmacy_sales
GROUP BY drug, total_sales, cogs
ORDER BY total_profit DESC
LIMIT 3;
