-- Active: 1708452708461@@127.0.0.1@3306@sakila
SELECT
count(film_actor.film_id) as NumberOfMovies,
film.length as FilmTime,
GROUP_CONCAT(
    CONCAT(
        actor.first_name,
        '',
        actor.last_name
    )SEPARATOR ', '
) as Actors
FROM
actor
INNER JOIN film_actor on film_actor.actor_id = actor.actor_id
INNER JOIN film on film.film_id = film_actor.film_id
GROUP BY
film.film_id 
HAVING film.`length` > 120
ORDER BY NumberOfMovies DESC

