SELECT bid, title, body
FROM blog
WHERE body ILIKE '%flag{_________________________________}%';