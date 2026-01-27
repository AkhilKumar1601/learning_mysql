-- Region wise sales in percentage.
SELECT
    region,
    ROUND(SUM(sales), 2) AS region_sales,
    ROUND(
        SUM(sales) * 100.0 / (SELECT SUM(sales) FROM orders_fact),
        2
    ) AS sales_percentage
FROM orders_fact
GROUP BY region
ORDER BY sales_percentage DESC;

