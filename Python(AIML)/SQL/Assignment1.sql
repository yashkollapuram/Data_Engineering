SELECT * FROM sakila.customer
WHERE first_name LIKE 'J%'
  AND active = 1;


SELECT * FROM sakila.film
WHERE title LIKE '%ACTION%'
   OR description LIKE '%WAR%';
  
  
SELECT * FROM sakila.customer
WHERE last_name != 'SMITH'
AND first_name = '%a';  


SELECT * FROM sakila.film
WHERE rental_rate >3
AND replacement_cost is NOT NULL;


SELECT store_id, COUNT(*) AS active_customers
FROM sakila.customer
WHERE active = 1
GROUP BY store_id;


SELECT DISTINCT rating FROM sakila.film;


SELECT rental_duration, COUNT(*) AS film_count,
       AVG(length) AS avg_length
FROM sakila.film
GROUP BY rental_duration
HAVING AVG(length) > 100;


SELECT DATE(payment_date) AS pay_date,
       SUM(amount) AS total_amount,
       COUNT(*) AS num_payments
FROM sakila.payment
GROUP BY DATE(payment_date)
HAVING COUNT(*) > 100;


SELECT * FROM sakila.customer
WHERE email IS NULL
   OR email LIKE '%.org';
 
 
SELECT * FROM sakila.film
WHERE rating IN ('PG', 'G')
ORDER BY rental_rate DESC;   


SELECT length, COUNT(*) AS film_count
FROM sakila.film
WHERE title LIKE 'T%'
GROUP BY length
HAVING COUNT(*) > 5;


SELECT a.actor_id, a.first_name, a.last_name,
       COUNT(fa.film_id) AS film_count
FROM sakila.actor a
JOIN sakila.film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.actor_id, a.first_name, a.last_name
HAVING COUNT(fa.film_id) > 10;


SELECT title, rental_rate, length
FROM sakila.film
ORDER BY rental_rate DESC, length DESC
LIMIT 5;


SELECT c.customer_id, c.first_name, c.last_name,
       COUNT(r.rental_id) AS total_rentals
FROM sakila.customer c
LEFT JOIN sakila.rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_rentals DESC;


SELECT f.title
FROM sakila.film f
LEFT JOIN sakila.inventory i ON f.film_id = i.film_id
LEFT JOIN sakila.rental r ON i.inventory_id = r.inventory_id
WHERE r.rental_id IS NULL;   
   
   
   