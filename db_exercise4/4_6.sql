SELECT c.customer_id, c.customer_name
FROM customer c
JOIN ordert o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(o.order_id) = (
    SELECT MAX(order_count)
    FROM (
        SELECT COUNT(*) AS order_count
        FROM ordert
        GROUP BY customer_id
    ) t
);