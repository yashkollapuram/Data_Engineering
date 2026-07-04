
SELECT * FROM sakila.customer
WHERE customer_id IN (
    SELECT customer_id FROM sakila.payment
    GROUP BY customer_id
    HAVING COUNT(*) > 5
);


SELECT first_name, last_name FROM sakila.actor
WHERE actor_id IN (
    SELECT actor_id FROM sakila.film_actor
    GROUP BY actor_id
    HAVING COUNT(film_id) > 10
);


SELECT first_name, last_name FROM sakila.customer
WHERE customer_id NOT IN (
    SELECT DISTINCT customer_id FROM sakila.payment
);


SELECT title, rental_rate FROM sakila.film
WHERE rental_rate > (
    SELECT AVG(rental_rate) FROM sakila.film
);


SELECT title FROM sakila.film
WHERE film_id NOT IN (
    SELECT DISTINCT film_id FROM sakila.inventory
    WHERE inventory_id IN (
        SELECT inventory_id FROM sakila.rental
    )
);


SELECT DISTINCT c.customer_id, c.first_name, c.last_name
FROM sakila.customer c
WHERE c.customer_id IN (
    SELECT customer_id FROM sakila.rental
    WHERE MONTH(rental_date) IN (
        SELECT MONTH(rental_date) FROM sakila.rental
        WHERE customer_id = 5
    )
)
AND c.customer_id != 5;


SELECT DISTINCT staff_id FROM sakila.payment
WHERE amount > (
    SELECT AVG(amount) FROM sakila.payment
);


SELECT title, rental_duration FROM sakila.film
WHERE rental_duration > (
    SELECT AVG(rental_duration) FROM sakila.film
);


SELECT * FROM sakila.customer
WHERE address_id = (
    SELECT address_id FROM sakila.customer
    WHERE customer_id = 1
)
AND customer_id != 1;


SELECT * FROM sakila.payment
WHERE amount > (
    SELECT AVG(amount) FROM sakila.payment
);

