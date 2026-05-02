SELECT dino_name, dino_type,SUM(amount) AS total_amount
FROM dinosaurs
GROUP BY dino_name, dino_type
ORDER BY SUM(amount) DESC,dino_type,dino_name
LIMIT 1;