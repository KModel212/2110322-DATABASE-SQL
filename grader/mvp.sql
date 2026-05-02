SELECT ddate, pname
FROM expense e1
GROUP BY ddate, pname
HAVING SUM(amt) = (
    SELECT SUM(amt)
    FROM expense e2
    WHERE e2.ddate = e1.ddate
    GROUP BY pname
    ORDER BY SUM(amt) DESC
    LIMIT 1
)
ORDER BY ddate, pname;