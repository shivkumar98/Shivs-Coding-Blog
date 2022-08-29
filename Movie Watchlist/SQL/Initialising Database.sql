use moviedb;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM directors WHERE 1=1;
DELETE FROM movies WHERE 1=1;
DELETE FROM reviews WHERE 1=1;
SELECT * FROM movies;
SELECT * FROM directors;


INSERT INTO movies( director_id, movie_title, movie_watched, review_id, date_watched)
VALUES ( null, 'Prisoners', true, null, '2013/01/01');
SELECT movie_id AS LastID FROM movies WHERE movie_id = @@Identity;
INSERT INTO directors ( movie_id,director_name) VALUES
((select movie_id FROM movies WHERE movie_id=@@Identity), 'Denis Villeneuve');

