SELECT
    L.lan AS language,
    COUNT(*) AS number_of_movies
FROM
    Movies.MovieLan ML
    INNER JOIN Movies.Lan L ON ML.lan = L.lan
GROUP BY
    L.lan
ORDER BY
    number_of_movies DESC;