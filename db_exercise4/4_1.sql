SELECT postal_code, COUNT(*) AS customers
FROM customer
GROUP BY postal_code
ORDER BY customers DESC;