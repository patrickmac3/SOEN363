-- movies that have highest nunmber of keywords 
-- with view 
SELECT
    imdb_id,
    title,
    number_of_keywords
FROM
    Movies.movie_summary
WHERE
    number_of_keywords = (
        SELECT
            MAX(number_of_keywords)
        FROM
            Movies.movie_summary
    );

-- without view
SELECT keyword_counts.movie_id, M.title, keyword_counts.number_of_keywords
FROM Movies.Movie M
INNER JOIN (
    SELECT movie_id, COUNT(movie_id) AS number_of_keywords
    FROM movies.MovieKeyword
    GROUP BY movie_id
    HAVING COUNT(movie_id) = (
        SELECT MAX(keyword_count)
        FROM (
            SELECT COUNT(movie_id) AS keyword_count
            FROM movies.MovieKeyword
            GROUP BY movie_id
        ) AS max_keyword_counts
    )
) AS keyword_counts ON M.imdb_id = keyword_counts.movie_id;

