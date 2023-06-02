CREATE TABLE film (
  film_id BIGINT(20) PRIMARY KEY,
  title VARCHAR(200),
  release_year CHAR(4),
  description MEDIUMTEXT,
  rental_rate FLOAT
);
INSERT INTO film (film_id, title, release_year, description, rental_rate)
VALUES
  (1, 'Film Pertama', 2022, 'Deskripsi Film Pertama', 9.99),
  (2, 'Film Kedua', 2023, 'Deskripsi Film Kedua', 8.99),
  (3, 'Film Ketiga', 2021, 'Deskripsi Film Ketiga', 7.99),
  (4, 'Film Keempat', 2022, 'Deskripsi Film Keempat', 6.99),
  (5, 'Film Kelima', 2023, 'Deskripsi Film Kelima', 5.99),
  (6, 'Film Keenam', 2021, 'Deskripsi Film Keenam', 4.99),
  (7, 'Film Ketujuh', 2022, 'Deskripsi Film Ketujuh', 3.99),
  (8, 'Film Kedelapan', 2023, 'Deskripsi Film Kedelapan', 2.99),
  (9, 'Film Kesembilan', 2021, 'Deskripsi Film Kesembilan', 1.99),
  (10, 'Film Kesepuluh', 2022, 'Deskripsi Film Kesepuluh', 9.49),
  (11, 'Film Kesebelas', 2023, 'Deskripsi Film Kesebelas', 8.49),
  (12, 'Film Keduabelas', 2021, 'Deskripsi Film Keduabelas', 7.49),
  (13, 'Film Ketigabelas', 2022, 'Deskripsi Film Ketigabelas', 6.49),
  (14, 'Film Keempatbelas', 2023, 'Deskripsi Film Keempatbelas', 5.49),
  (15, 'Film Kelimabelas', 2021, 'Deskripsi Film Kelimabelas', 4.49),
  (16, 'Film Keenambelas', 2022, 'Deskripsi Film Keenambelas', 3.49),
  (17, 'Film Ketujuhbelas', 2023, 'Deskripsi Film Ketujuhbelas', 2.49),
  (18, 'Film Kedelapanbelas', 2021, 'Deskripsi Film Kedelapanbelas', 1.49),
  (19, 'Film Kesembilanbelas', 2022, 'Deskripsi Film Kesembilanbelas', 9.19),
  (20, 'Film Keduapuluh', 2023, 'Deskripsi Film Keduapuluh', 8.19);


CREATE TABLE category (
  category_id INT(20) PRIMARY KEY,
  name VARCHAR(200),
  last_update DATETIME
);
INSERT INTO category (category_id, name, last_update)
VALUES
    (1, 'Action', NOW()),
    (2, 'Adventure', NOW()),
    (3, 'Animation', NOW()),
    (4, 'Comedy', NOW()),
    (5, 'Drama', NOW()),
    (6, 'Fantasy', NOW()),
    (7, 'Horror', NOW()),
    (8, 'Mystery', NOW()),
    (9, 'Romance', NOW()),
    (10, 'Thriller', NOW());


CREATE TABLE film_category (
  film_id INT(20),
  category_id BIGINT(20),
  last_update DATETIME,
  PRIMARY KEY (film_id, category_id)
);
INSERT INTO film_category (film_id, category_id, last_update)
VALUES
    (1, 1, NOW()),
    (1, 3, NOW()),
    (1, 7, NOW()),
    (2, 5, NOW()),
    (2, 4, NOW()),
    (2, 1, NOW()),
    (2, 2, NOW()),
    (4, 6, NOW()),
    (4, 2, NOW()),
    (4, 3, NOW());


CREATE TABLE actor (
  actor_id INT(20),
  actor_name VARCHAR(255),
  last_update DATETIME,
  film_id INT(20),
  PRIMARY KEY (actor_id, film_id)
);
INSERT INTO actor (actor_id, film_id, actor_name, last_update)
VALUES
  (1, 1, 'Actor 1', NOW()),
  (2, 1, 'Actor 2', NOW()),
  (3, 1, 'Actor 3', NOW()),
  (4, 2, 'Actor 4', NOW()),
  (5, 2, 'Actor 5', NOW()),
  (6, 3, 'Actor 6', NOW()),
  (7, 3, 'Actor 7', NOW()),
  (8, 3, 'Actor 8', NOW()),
  (9, 3, 'Actor 9', NOW()),
  (10, 4, 'Actor 10', NOW()),
  (11, 4, 'Actor 11', NOW()),
  (12, 4, 'Actor 12', NOW()),
  (13, 5, 'Actor 13', NOW()),
  (14, 5, 'Actor 14', NOW()),
  (15, 5, 'Actor 15', NOW());
