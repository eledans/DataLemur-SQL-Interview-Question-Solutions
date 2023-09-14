WITH supercloud_customer AS (
  SELECT customers.customer_id, COUNT(DISTINCT products.product_category) AS unique_count
  FROM customer_contracts AS customers
  LEFT JOIN products
  ON customers.product_id = products.product_id
  GROUP BY customers.customer_id
)

SELECT customer_id
FROM supercloud_customer
WHERE unique_count = (
  SELECT COUNT(DISTINCT product_category)
  FROM products
)
ORDER BY customer_id;
