CREATE VIEW Movies.movie_summary AS
SELECT
    m.imdb_id,
    m.title,
    m.description,
    m.rating,
    cr.contentRating,
    m.runtime,
    COUNT(DISTINCT mk.keyword_id) AS number_of_keywords,
    COUNT(DISTINCT mc.country) AS number_of_countries
FROM
    Movie m
    JOIN ContentRating cr ON m.imdb_id = cr.movie_id
    LEFT JOIN MovieKeyword mk ON m.imdb_id = mk.movie_id
    LEFT JOIN MovieCountry mc ON m.imdb_id = mc.movie_id
GROUP BY
    m.imdb_id,
    m.title,
    m.description,
    m.rating,
    cr.contentRating,
    m.runtime;


