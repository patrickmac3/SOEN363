
// A) Find all movies that are played by a sample actor.
MATCH (actor:ACTOR {first_name: 'Leonardo', last_name:'DiCaprio' })-[acted_in:ACTED_IN]->(movie)
RETURN movie;


//  B)  Find all movies that are released after the year 2000 and has a rating of at least 5
MATCH (movie:MOVIE)
WHERE toInteger(movie.release_year) > 2000 AND 
toInteger(movie.rating) >= 5
RETURN movie;


// C)  Find all movies that share two keywords of your choice. Make sure your query returns more than one movie 
MATCH (k:KEYWORD)-[d:DESCRIBES]->(m:MOVIE) WHERE k.keyword='amazing' OR k.keyword='incredible' return m;

// D)  Find top 2 movies with largest number of keywords.
MATCH (keyword:KEYWORD)-[:DESCRIBES]->(movie:MOVIE)
WITH movie, COUNT(keyword) as num_of_keywords, movie.title as title
RETURN movie
ORDER BY  num_of_keywords DESC
LIMIT 2;

// E)  Find top 10 movies (ordered by rating) in a language of your choice.
MATCH (movie:MOVIE)
WHERE 'English' IN movie.languages
WITH movie , toFloat(movie.rating) as Rating
ORDER BY Rating DESC
LIMIT 10
RETURN movie;

// F) Build full text search index to query movie plots.
CREATE FULLTEXT INDEX movie_description 
FOR (movie:MOVIE)
ON EACH [movie.description];


// G) Write a full text search query and search for some sample text of your choice
CALL db.index.fulltext.queryNodes('movie_description', 'war') 
YIELD node 
RETURN node;
