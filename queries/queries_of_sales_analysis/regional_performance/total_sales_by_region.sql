-- Region wise sales.
SELECT
    region,
    ROUND(SUM(sales), 2) AS total_sales
FROM orders_fact
GROUP BY region
ORDER BY total_sales DESC;

