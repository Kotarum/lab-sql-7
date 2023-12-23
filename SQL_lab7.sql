use sakila;

-- 1. Which are the actors whose last names are not repeated?
SELECT last_name
FROM actor
GROUP BY last_name
HAVING COUNT(*) = 1;

-- 2. Which last names appear more than once?
SELECT last_name
FROM actor
GROUP BY last_name
HAVING COUNT(*) > 1;

-- 3. Using the rental table, find out how many rentals were processed by each employee
SELECT staff_id, COUNT(*) as rental_count
FROM rental
GROUP BY staff_id;

-- 4. Using the film table, find out how many films were released each year
SELECT YEAR(release_date) as release_year, COUNT(*) as film_count
FROM film
GROUP BY release_year;

-- 5. Using the film table, find out for each rating how many films were there
SELECT rating, COUNT(*) as film_count
FROM film
GROUP BY rating;

-- 6. What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
SELECT rating, ROUND(AVG(length), 2) as average_length
FROM film
GROUP BY rating;

-- 7. Which kind of movies (rating) have a mean duration of more than two hours?
SELECT rating, ROUND(AVG(length), 2) as average_length
FROM film
GROUP BY rating
HAVING AVG(length) > 120;