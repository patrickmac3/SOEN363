SELECT M.title
FROM Movies.Movie M
INNER JOIN Movies.Directed D ON M.imdb_id = D.movie_id
INNER JOIN Movies.Actor A ON D.director_id = A.imdb_id;
