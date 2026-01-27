-- sales by customer segment.
SELECT
    c.segment,
    ROUND(SUM(o.sales), 2) AS total_sales
FROM orders_fact o
JOIN customers_dim c
    ON o.customer_id = c.customer_id
GROUP BY c.segment
ORDER BY total_sales DESC;

