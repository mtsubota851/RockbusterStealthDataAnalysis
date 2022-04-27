SELECT D.Country,
COUNT (customer_id) as customer_count
FROM customer A
INNER JOIN address B ON A.address_id = B.address_id
INNER JOIN city C ON B.city_id = C.city_id
INNER JOIN country D ON C.country_id = D.country_id
GROUP BY country 
ORDER BY customer_count DESC
LIMIT 10;