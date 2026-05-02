SELECT EXTRACT (YEAR FROM o.order_date) AS order_year, ROUND(SUM(od.discount*od.quantity*p.unit_price)::numeric,2) AS discount_amount
FROM order_details od NATURAL JOIN orders o
NATURAL JOIN products p
GROUP BY order_year
ORDER BY order_year DESC;