SELECT A.customer_ID , B.first_name, B.last_name,
	   D.city, E.country,
SUM (amount) AS highest_amount_paid
FROM payment A
INNER JOIN customer B ON A.customer_ID = B.customer_ID
INNER JOIN address C ON B.address_ID = C.address_ID
INNER JOIN city D ON C.city_ID = D.city_ID
INNER JOIN country E ON D.country_ID = E.country_ID
WHERE E.country IN ('India','China','United States',
				    'Japan','Mexico','Brazil','Russian Federation',
				    'Philippines','Turkey','Indonesia')
AND D.city IN ('Aurora','Atlixco','Xintai',
			   'Adoni','Dhule (Dhulia)',
			   'Kurashiki','Pingxiang',
			   'Sivas', 'Celaya','So Leopoldo')
GROUP BY A.customer_ID, B.first_name, B.last_name,
		 D.city, E.country
ORDER BY highest_amount_paid DESC
LIMIT 5;