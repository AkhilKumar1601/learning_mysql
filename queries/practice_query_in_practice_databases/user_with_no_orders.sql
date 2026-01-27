-- users with zero orders.
SELECT u.id, u.name, u.email 
FROM users u
LEFT JOIN orders o
ON u.id = o.user_id
WHERE o.id IS NULL;
