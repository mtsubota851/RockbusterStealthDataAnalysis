SELECT film_id, title, rental_duration
FROM film
WHERE rental_duration > 3 AND rental_duration < 7
ORDER BY rental_duration ASC