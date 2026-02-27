-- QUESTION 1
/*1.	One of our investors is interested in the films we carry and how many actors are listed for each film title can you pull a list of all titles,
 and figure out how many actors are associated with each title. (hint use left join, decide which table should be your left table) 
*/
-- ANS

SELECT
  f.title,
  COUNT(fa.actor_id) AS actor_count
FROM film AS f
LEFT JOIN film_actor AS fa
  ON f.film_id = fa.film_id
GROUP BY
  f.title
ORDER BY
  f.title;
-----------------------------------------------------------------------------------------------------------------------

 -- QUESTION 2
 /* 2.	Using LEFT JOIN, INNER JOIN AND RIGHT JOIN, pull out the following records, compare your answer across the three tables 
 (i.e LEFT JOIN, INNER JOIN AND RIGHT JOIN) and make a brief summary of your observations. The information’s are:
-- •	Actor first name
-- •	Actor last name
-- •	Actor award first name
-- •	Actor award last name
-- •	Awards
-- Ensure to use your ALIAS where necessary
*/
-- ANS
-- INNER JOIN: only actors who have awards
SELECT
  a.first_name  AS actor_first_name,
  a.last_name   AS actor_last_name,
  aa.awards
FROM actor AS a
INNER JOIN actor_award AS aa
  ON a.actor_id = aa.actor_id
ORDER BY
  a.last_name,
  aa.awards;

-- LEFT JOIN: all actor–film relationships, award may be NULL
SELECT
  a.first_name  AS actor_first_name,
  a.last_name   AS actor_last_name,
  aa.awards
FROM actor AS a
LEFT JOIN actor_award AS aa
  ON a.actor_id = aa.actor_id
ORDER BY
  a.last_name,
  aa.awards;

-- RIGHT JOIN: all film–award links, only matching actors shown
SELECT
  a.first_name  AS actor_first_name,
  a.last_name   AS actor_last_name,
  aa.awards
FROM actor AS a
RIGHT JOIN actor_award AS aa
  ON a.actor_id = aa.actor_id
ORDER BY
  aa.awards,
  a.last_name;
-----------------------------------------------------------------------------------------------------------------------

-- QUESTION 3
-- 3. The business wants you to pull out records of customer id with less than 15 rental all-time
-- ANS
SELECT
  c.customer_id,
  COUNT(r.rental_id) AS total_rentals
FROM customer AS c
LEFT JOIN rental   AS r
  ON c.customer_id = r.customer_id
GROUP BY
  c.customer_id
HAVING
  total_rentals < 15
ORDER BY
  total_rentals ASC;
-----------------------------------------------------------------------------------------------------------------------

-- QUESTION --
-- 4. Can you help pull out a count of film, along with the average, min, and max rental rating, group by replacement cost
-- ANS
SELECT
  f.replacement_cost,
  COUNT(f.film_id)    AS film_count,
  AVG(f.rental_rate)  AS avg_rental_rate,
  MIN(f.rental_rate)  AS min_rental_rate,
  MAX(f.rental_rate)  AS max_rental_rate
FROM film AS f
GROUP BY
  f.replacement_cost
ORDER BY
  f.replacement_cost;
-----------------------------------------------------------------------------------------------------------------------

-- QUESTION --
-- 5.We need information on rating, rental duration, replacement cost and count of film id 
-- ANS
SELECT
  f.rating,
  f.rental_duration,
  f.replacement_cost,
  COUNT(f.film_id) AS film_count
FROM film AS f
GROUP BY
  f.rating,
  f.rental_duration,
  f.replacement_cost
ORDER BY
  f.rating,
  f.rental_duration;
-----------------------------------------------------------------------------------------------------------------------
