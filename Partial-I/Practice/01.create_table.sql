-- Creating the movie table with fields:
-- id_movie, title, director, duration
-- where id_movie is the Primary Key
CREATE TABLE "movies" (
	"id_movie"	INTEGER,
	"title"	TEXT,
	"director"	TEXT,
	"duration"	NUMERIC,
	PRIMARY KEY("id_movie")
);