SELECT pname,pprice,sum(quantity_sold) AS total_sales
FROM PRODUCT NATURAL JOIN PRODUCT_SALES
WHERE sale_date BETWEEN '2022-01-01' AND '2025-01-01'
GROUP BY pid, pname, pprice
HAVING sum(quantity_sold) <100
ORDER BY sum(quantity_sold) DESC, pprice, pname
LIMIT 3;