-- Active: 1708452708461@@127.0.0.1@3306@sakila
SELECT b.first_name, b.last_name, count(a.film_id) as NumberOfMovies FROM film_actor a
INNER JOIN actor b ON a.actor_id = b.actor_id
GROUP BY a.actor_id
ORDER BY NumberOfMovies DESC
