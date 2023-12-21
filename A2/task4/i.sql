SELECT M.title, M.rating, M.number_of_reviews
FROM Movies.Movie M
ORDER BY M.rating DESC, M.number_of_reviews<= 10 DESC
LIMIT 3;
