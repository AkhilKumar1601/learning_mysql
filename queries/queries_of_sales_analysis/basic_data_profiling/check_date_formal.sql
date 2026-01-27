-- Check date format consistency.
SELECT order_date, COUNT(*)
FROM raw_superstore
GROUP BY order_date
LIMIT 5;

