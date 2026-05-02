SELECT name
FROM users JOIN workout using (ssn)
WHERE (sex = 'F') AND (age BETWEEN 22 AND 60) AND (push_count>=40)
ORDER BY push_count DESC, ssn;