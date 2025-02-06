--QUESTION A
SELECT COUNT(movies.movie_name), movies.genre FROM movies
GROUP BY movies.genre;

--QUESTION B
SELECT SUM(movies.revenue), movies.year FROM movies
GROUP BY movies.year;

--QUESTION C
SELECT AVG(movies.revenue), movies.genre FROM movies
GROUP BY movies.genre;

--QUESTION D
SELECT AVG(movies.revenue), movies.genre, movies.language FROM movies
GROUP BY movies.language, movies.genre;

--QUESTION E
SELECT COUNT(movies.movie_name), movies.language FROM movies
GROUP BY movies.language
ORDER BY COUNT(movies.movie_name)
LIMIT 1;

--QUESTION F
SELECT COUNT(movies.movie_name), movies.country FROM movies
GROUP BY movies.country
ORDER BY COUNT(movies.movie_name) DESC
LIMIT 1;

--QUESTION G
SELECT COUNT(movies.movie_name), movies.genre FROM movies
GROUP BY movies.genre
HAVING COUNT(movies.movie_name) >2;

--QUESTION H
SELECT SUM(movies.revenue), movies.year FROM movies
GROUP BY movies.year
HAVING SUM(movies.revenue) >1000;


--QUESTION I
SELECT COUNT(movies.movie_name), movies.language FROM movies
GROUP BY movies.language
HAVING COUNT(movies.movie_name) >=3;