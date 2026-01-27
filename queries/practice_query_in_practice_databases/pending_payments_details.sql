-- finding pending payments details.
SELECT 
    p.id AS payment_id,
    p.payment_status,
    p.amount AS payment_amount,
    u.id AS user_id,
    u.name AS user_name,
    pr.name AS product_name
FROM payments p
JOIN orders o
    ON o.id = p.order_id
JOIN users u
    ON u.id = o.user_id
JOIN order_items oi
    ON o.id = oi.order_id
JOIN products pr
    ON pr.id = oi.product_id
WHERE p.payment_status = 'Pending';

