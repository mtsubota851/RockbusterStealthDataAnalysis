SELECT C.city AS top_cities, D.country,
		Count (customer_id) AS customer_count
FROM customer A
INNER JOIN address B ON A.address_id = B.address_id
INNER JOIN city C ON B.city_id = C.city_id
INNER JOIN country D ON C.country_id = D.country_id
WHERE country IN ('India',
				  'China',
				  'United States',
				  'Japan',
				  'Mexico',
				  'Brazil',
				  'Russian Federation',
				  'Philippines',
				  'Turkey',
				  'Indonesia')
GROUP BY C.city, D.country
ORDER BY customer_count DESC
LIMIT 10;