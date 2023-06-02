SELECT c.name AS 'Nama Kategori', COUNT(*) AS 'Jumlah Film'
FROM category c
INNER JOIN film_category fc ON c.category_id = fc.category_id
INNER JOIN film f ON fc.film_id = f.film_id
GROUP BY c.category_id
ORDER BY MAX(f.rental_rate) DESC
LIMIT 3;
