SELECT DISTINCT name,era,birth_year
FROM poets JOIN poems using (poet_id)
WHERE written_year BETWEEN 1800 AND 1900
AND lines>=4
AND (mood ILIKE 'sad%' OR mood ILIKE 'love%')
AND title ILIKE '%lonely%'
ORDER BY poet_name,era,birth_year