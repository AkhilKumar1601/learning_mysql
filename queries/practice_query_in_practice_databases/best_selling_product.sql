-- Best selling product in terms of quantity
SELECT 
    p.name AS product_name, 
    SUM(oi.quantity) AS total_quantity_sold
FROM products p
JOIN order_items oi
    ON p.id = oi.product_id
GROUP BY p.id, p.name
ORDER BY total_quantity_sold DESC
LIMIT 1;

/*
Best selling product in terms of revenue (price × quantity)
SELECT 
    p.name AS product_name, 
    SUM(oi.quantity * oi.price) AS total_revenue
FROM products p
JOIN order_items oi
    ON p.id = oi.product_id
GROUP BY p.id, p.name
ORDER BY total_revenue DESC
LIMIT 1;
*/

