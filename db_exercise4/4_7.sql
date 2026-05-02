SELECT p.product_id, p.product_description
FROM product p
JOIN order_line ol ON p.product_id = ol.product_id
GROUP BY p.product_id, p.product_description
ORDER BY SUM(ol.ordered_quantity) DESC
LIMIT 1;