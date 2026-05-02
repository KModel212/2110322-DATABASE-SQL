SELECT DName AS department
FROM Employees NATURAL JOIN Departments
WHERE EName ILIKE '%son%'
GROUP BY DID, DName
ORDER BY count(EID) DESC, DName
LIMIT 1;