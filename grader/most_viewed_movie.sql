SELECT mid, title, count(cid) AS total_views
FROM movie NATURAL JOIN customer
GROUP BY mid,title 
HAVING count(cid) = (
    SELECT count(cid) AS cnt
    FROM movie NATURAL JOIN customer
    GROUP BY mid,title 
    ORDER BY cnt DESC
    LIMIT 1
)
ORDER BY title;