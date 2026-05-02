SELECT c.first_name
FROM customer c
JOIN invoice i ON i.cus_id = c.cus_id
GROUP BY c.cus_id, c.first_name
ORDER BY SUM(i.total_spent) DESC,count(id), c.cus_id
LIMIT 1;