SELECT aname, tname
FROM contestant NATURAL JOIN submit NATURAL JOIN task NATURAL JOIN author
WHERE score = 100
GROUP BY aname,tname,aid
HAVING count(cid) = (
    SELECT COUNT(cid) AS cnt
    FROM task NATURAL JOIN submit
    WHERE score = 100
    GROUP BY tid
    ORDER BY cnt DESC
    LIMIT 1
    
)
ORDER BY aid;