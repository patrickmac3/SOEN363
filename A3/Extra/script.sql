-- drop these views if already exist
DROP VIEW IF EXISTS movie_details;
DROP VIEW IF EXISTS actor_details;
DROP VIEW IF EXISTS country_details;
DROP VIEW IF EXISTS keyword_details;


-- movie details view 
CREATE VIEW movie_details AS
SELECT 
	m.id, 
    m.imdb_id, 
    m.title, 
    m.description, 
    m.rating, 
    m.runtime, 
    m.release_year, 
    GROUP_CONCAT(DISTINCT g.genre) AS genres,
	GROUP_CONCAT(DISTINCT ml.lan) AS languages
FROM
	movie AS m
    LEFT JOIN MovieGenre mg ON m.imdb_id=mg.movie_id
    LEFT JOIN Genre g ON mg.genre_id = g.id
    LEFT JOIN MovieLan ml ON m.imdb_id = ml.movie_id
GROUP BY
	m.id, 
    m.imdb_id, 
    m.title, 
    m.description, 
    m.rating, 
    m.release_year,
    m.runtime ;
    

-- actor details alternate view
CREATE VIEW actor_details AS 
SELECT
	p.imdb_id,
    ai.movie_id,
    SUBSTRING_INDEX(p.name, ' ', 1) AS first_name,
    SUBSTRING_INDEX(p.name, ' ', -1) AS last_name,    
    ai.persona,
    m.title AS movie_title,
    m.release_year AS movie_release_year
FROM Person AS p 
JOIN Actor a ON p.imdb_id = a.imdb_id
JOIN Acts_in ai ON a.imdb_id = ai.actor_id
JOIN Movie m ON m.imdb_id = ai.movie_id;


-- keyword details 
CREATE VIEW keyword_details AS 
SELECT
	m.title AS movie_title,
    m.release_year AS movie_release_year,
    k.keyword
FROM 
	keyword AS k
INNER JOIN MovieKeyword mk ON mk.keyword_id = k.id
INNER JOIN Movie m ON m.imdb_id = mk.movie_id ;

-- country details 
CREATE VIEW country_details AS 
SELECT
    mc.country, 
    c.country_code,
    m.title AS movie_title,
    m.release_year AS movie_release_year
FROM 
	MovieCountry AS mc
INNER JOIN Country c ON mc.country=c.country 
INNER JOIN Movie m ON m.imdb_id = mc.movie_id ;


