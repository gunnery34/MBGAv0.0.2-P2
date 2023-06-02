SELECT f.title AS 'Judul Film', f.release_year AS 'Tahun Film', a.actor_name AS 'Nama Aktor'
FROM film f
JOIN actor a ON f.film_id = a.film_id;
