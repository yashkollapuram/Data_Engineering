SELECT first_name, last_name, email, address_id, COUNT(*) AS duplicate_count
FROM sakila.customer
GROUP BY first_name, last_name, email, address_id
HAVING COUNT(*) > 1;


SELECT 
    SUM(
        LENGTH(description) - LENGTH(REPLACE(LOWER(description), 'a', ''))
    ) AS total_a_count
FROM sakila.film;


SELECT
    SUM(LENGTH(description) - LENGTH(REPLACE(LOWER(description), 'a', ''))) AS count_a,
    SUM(LENGTH(description) - LENGTH(REPLACE(LOWER(description), 'e', ''))) AS count_e,
    SUM(LENGTH(description) - LENGTH(REPLACE(LOWER(description), 'i', ''))) AS count_i,
    SUM(LENGTH(description) - LENGTH(REPLACE(LOWER(description), 'o', ''))) AS count_o,
    SUM(LENGTH(description) - LENGTH(REPLACE(LOWER(description), 'u', ''))) AS count_u
FROM sakila.film;


SELECT 
    customer_id,
    YEAR(payment_date)     AS year,
    MONTH(payment_date)    AS month,
    MONTHNAME(payment_date) AS month_name,
    SUM(amount)            AS total_payment
FROM sakila.payment
GROUP BY customer_id, YEAR(payment_date), MONTH(payment_date), MONTHNAME(payment_date)
ORDER BY customer_id, year, month;


SELECT customer_id,
       YEAR(payment_date) AS year,
       SUM(amount) AS total_payment
FROM sakila.payment
GROUP BY customer_id, YEAR(payment_date)
ORDER BY customer_id, year;


SELECT customer_id,
       YEAR(payment_date) AS year,
       WEEK(payment_date) AS week_number,
       SUM(amount) AS total_payment
FROM sakila.payment
GROUP BY customer_id, YEAR(payment_date), WEEK(payment_date)
ORDER BY customer_id, year, week_number;


SELECT 
    2024 AS year_checked,
    CASE
        WHEN (2024 % 4 = 0 AND 2024 % 100 != 0) OR (2024 % 400 = 0)
        THEN 'Leap Year'
        ELSE 'Not a Leap Year'
    END AS result;
    
    
SELECT 
    DATEDIFF(
        DATE(CONCAT(YEAR(CURDATE()), '-12-31')),
        CURDATE()
    ) AS days_remaining;
    
    
SELECT 
    payment_id,
    payment_date,
    CONCAT('Q', QUARTER(payment_date)) AS quarter
FROM sakila.payment;


SELECT
    CONCAT(
        TIMESTAMPDIFF(YEAR, '2000-01-15', CURDATE()), ' years, ',
        TIMESTAMPDIFF(MONTH, '2000-01-15', CURDATE()) 
            - TIMESTAMPDIFF(YEAR, '2000-01-15', CURDATE()) * 12, ' months, ',
        DATEDIFF(
            CURDATE(),
            DATE_ADD('2000-01-15', INTERVAL 
                TIMESTAMPDIFF(MONTH, '2000-01-15', CURDATE()) 
            MONTH)
        ), ' days'
    ) AS age;


