SELECT c.name AS 'Nama Kategori', COUNT(fc.film_id) AS 'Jumlah Film'
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
GROUP BY c.category_id
ORDER BY COUNT(fc.film_id) DESC
LIMIT 5;
