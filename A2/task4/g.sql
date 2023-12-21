SELECT M.title
FROM Movies.Movie M
LEFT JOIN Movies.MovieCountry MC ON M.imdb_id = MC.movie_id
LEFT JOIN Movies.Country C ON MC.country = C.country
LEFT JOIN Movies.MovieLan ML ON M.imdb_id = ML.movie_id
LEFT JOIN Movies.Lan L ON ML.lan = L.lan
WHERE L.lan <> 'English' AND (C.country IS NULL OR C.country NOT IN ('Canada', 'USA'));

