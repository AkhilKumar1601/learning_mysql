-- total sales category wise.
SELECT
p.category,
ROUND(SUM(sales),2) AS total_sales_category_wise
FROM orders_fact
JOIN products_dim p
ON orders_fact.product_id = p.product_id
GROUP BY p.category
ORDER BY total_sales_category_wise DESC;

