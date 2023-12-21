SELECT M.title
FROM Movies.Movie M
INNER JOIN Movies.MovieCountry MC ON M.imdb_id = MC.movie_id
INNER JOIN Movies.Country C ON MC.country = C.country
INNER JOIN Movies.MovieLan ML ON M.imdb_id = ML.movie_id
INNER JOIN Movies.Lan L ON ML.lan = L.lan
WHERE C.country = 'Canada' AND L.lan = 'French';
