/*
Category-wise total sales (includes categories with zero sales)
*/

SELECT 
    c.category_name,
    COALESCE(SUM(oi.quantity * oi.price), 0) AS total_sales
FROM categories c
LEFT JOIN products p
    ON c.id = p.category_id
LEFT JOIN order_items oi
    ON p.id = oi.product_id
GROUP BY c.id, c.category_name
ORDER BY total_sales DESC;

