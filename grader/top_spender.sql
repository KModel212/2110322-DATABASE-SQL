SELECT u.name, SUM(o.quantity * p.price) AS total_price
FROM users u
JOIN orders o ON o.user_id = u.id
JOIN products p ON p.id = o.product_id
GROUP BY u.id, u.name
ORDER BY total_price DESC, u.id ASC
LIMIT 1;