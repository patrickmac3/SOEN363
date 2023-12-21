SELECT M.title, M.rating, M.number_of_reviews
FROM Movies.Movie M
WHERE M.number_of_reviews >= 10
ORDER BY M.rating DESC
LIMIT 3;
