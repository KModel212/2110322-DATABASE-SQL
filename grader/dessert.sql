SELECT c.name, SUM(d.price*o.amount) as total
FROM customers c JOIN orders o ON o.c_id=c.id
JOIN desserts d ON d.id=o.d_id
GROUP BY c.name,c.id
ORDER BY total DESC,c.id
limit 1;