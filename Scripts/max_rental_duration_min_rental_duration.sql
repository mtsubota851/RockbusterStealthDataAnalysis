SELECT rating, MAX(rental_duration) AS maximum_rental_duration,
			   MIN(rental_duration) AS minimum_rental_duration
FROM film
GROUP BY rating