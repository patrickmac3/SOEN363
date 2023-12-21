// GENERATING MOVIE NODES 

LOAD CSV WITH HEADERS from 'file:///csv/movie.csv' AS row 
MERGE (movie:MOVIE{
    title: row.title, 
    description: row.description, 
    release_year: row.release_year, 
    rating: row.rating, 
    runtime: row.runtime
})

WITH movie, row
WHERE row.languages IS NOT NULL AND TRIM(row.languages) <> ''
SET movie.languages = split(row.languages, ',')

WITH movie, row
WHERE row.genres IS NOT NULL AND TRIM(row.genres) <> ''
SET movie.genres = split(row.genres, ',');

// CREATING ACTOR NODES AND CREATING RELATION WITH MOVIES 
LOAD CSV WITH HEADERS FROM 'file:///csv/actor.csv' AS row
MERGE (actor:ACTOR {first_name: row.first_name, last_name: row.last_name})
MERGE (movie:MOVIE {title: row.movie_title, release_year: row.movie_release_year})
MERGE (actor)-[acted_in:ACTED_IN]->(movie)
SET acted_in.character = row.persona;


// CREATING COUNTRY NODES AND THEIR RELATION TO MOVIE
LOAD CSV WITH HEADERS FROM 'file:///csv/country.csv' AS row 
MERGE (:COUNTRY {
    country: row.country,
    country_code: row.country_code
})

WITH row 
MATCH (country:COUNTRY{country: row.country, country_code: row.country_code})
MATCH (movie:MOVIE{title: row.movie_title, release_year: row.movie_release_year})
MERGE (movie)-[:PLAYED_IN]->(country);


// CREATE KEYWORDS AND RELATION TO MOVIES
LOAD CSV WITH HEADERS from 'file:///csv/keyword.csv' AS row
MERGE(:KEYWORD{keyword: row.keyword })

WITH row
MATCH (keyword:KEYWORD {keyword: row.keyword})
MATCH (movie:MOVIE{title: row.movie_title, release_year:row.movie_release_year})
MERGE (keyword)-[:DESCRIBES]->(movie);




