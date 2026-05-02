SELECT dname AS Mor_name
FROM doctor
WHERE d_id NOT IN ( 
    SELECT d_id
    FROM doctor NATURAL JOIN work_for NATURAL JOIN hospital
) AND dname ILIKE 'c%'
ORDER BY dage DESC,d_id;
