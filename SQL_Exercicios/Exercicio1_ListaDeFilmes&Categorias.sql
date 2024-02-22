-- Active: 1708452708461@@127.0.0.1@3306@sakila
SELECT film.title, film_category.category_id FROM film
INNER JOIN film_category
ON film.film_id = film_category.film_id
