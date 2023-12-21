SELECT COUNT(*) AS number_of_movies
FROM (
    SELECT movie_id, COUNT(*) AS language_count
    FROM movies.movielan
    GROUP BY movie_id
    HAVING language_count > 1
) AS movies_with_multiple_languages;