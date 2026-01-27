-- checking for duplicates.
SELECT order_id, product_id, COUNT(*)
FROM raw_superstore
GROUP BY order_id, product_id
HAVING COUNT(*) > 1
LIMIT 5;

