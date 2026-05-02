SELECT postal_code, COUNT(*) AS customers
FROM customer
GROUP BY postal_code
HAVING COUNT(*) > 1
ORDER BY customers DESC;