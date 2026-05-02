SELECT distinct cname
FROM customer JOIN placement using(cid) 
JOIN porder using (oid) 
JOIN product using (pid)
WHERE pprice > (
    SELECT AVG(pprice)
    FROM product
    WHERE pcategory = (
        SELECT pcategory
        FROM product
        GROUP BY pcategory
        ORDER BY COUNT(pid) DESC
        LIMIT 1
    )
    GROUP BY pcategory
)
ORDER BY cname;