SELECT room_type, count(id) AS booking_count
FROM bookings
WHERE EXTRACT(YEAR FROM check_in_date) = 2024
GROUP BY room_type
ORDER BY booking_count DESC, room_type
LIMIT 1;