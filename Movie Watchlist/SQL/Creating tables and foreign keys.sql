use moviedb;
DROP TABLE movies;
CREATE TABLE movies (
	movie_id int NOT NULL AUTO_INCREMENT,
    director_id int NULL,
    movie_title char(50) NOT NULL,
    movie_watched boolean NOT NULL,
	review_id int NULL,
    date_watched date NULL,
    CONSTRAINT movies_pk PRIMARY KEY (movie_id)
);

CREATE TABLE reviews (
	review_id int NOT NULL AUTO_INCREMENT,
    movie_id int NOT NULL,
    director_id int NOT NULL,
    review char(200) NULL,
    review_score int NULL,
    review_date date NOT NULL,
    CONSTRAINT reviews_pk PRIMARY KEY (review_id)
);

CREATE TABLE directors (
	director_id int NOT NULL,
    movie_id int NOT NULL,
    director_name char(100),
	CONSTRAINT directors_pk PRIMARY KEY (director_id)
);

ALTER TABLE movies
ADD FOREIGN KEY (director_id)
REFERENCES directors(director_id);
ALTER TABLE movies
ADD FOREIGN KEY (review_id)
REFERENCES reviews(review_id);

ALTER TABLE reviews
ADD FOREIGN KEY (movie_id)
REFERENCES movies(movie_id);
ALTER TABLE reviews
ADD FOREIGN KEY (director_id)
REFERENCES directors(director_id);


ALTER TABLE directors
ADD FOREIGN KEY (movie_id)
REFERENCES movies(movie_id);