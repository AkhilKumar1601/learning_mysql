-- Orders with payment failure.
SELECT
    o.id AS order_id,
    o.user_id,
    o.order_date,
    o.status AS order_status,
    p.payment_mode,
    p.payment_status,
    p.amount
FROM orders o
JOIN payments p
    ON o.id = p.order_id
WHERE p.payment_status = 'Failed';

