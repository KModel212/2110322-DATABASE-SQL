SELECT postal_code,SUM(p.standard_price*ol.o_quantity) AS total_payment
FROM customer c
JOIN ordert o ON c.c_id = o.c_id
JOIN order_line ol ON o.o_id = ol.o_id
JOIN product p ON ol.p_id = p.p_id
GROUP BY postal_code
ORDER BY postal_code;