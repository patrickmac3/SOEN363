-- SELECT
--     m.imdb_id,
--     m.title,
--     m.release_year
-- FROM
--     Movies.Movie AS m
--     JOIN Movies.acts_in AS ai ON m.imdb_id = ai.movie_id
-- WHERE
--     ai.actor_id = '0000158'
--     AND m.release_year < 2010

SELECT
    m.imdb_id,
    m.title,
    m.release_year
FROM
    Movies.Movie AS m
WHERE 
    m.release_year < 2010 AND m.imdb_id IN (
        SELECT movie_id FROM acts_in WHERE actor_id='0000158'
    )
