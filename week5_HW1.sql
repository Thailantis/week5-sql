-- 1. How many actors are there with the last name ‘Wahlberg’?
      SELECT *
      FROM actor
      WHERE last_name = 'Wahlberg';

-- The count is 2 because there are 2 Wahlberg.

-- 2. How many payments were made between $3.99 and $5.99?
      SELECT *
      FROM payment
      WHERE amount BETWEEN >3.99 AND <5.99;

-- The count is 5,607 even though it was 4.99.

-- 3. What film does the store have the most of? (search in inventory) 
-- Note: There are many films that occur the most times. Feel free to answer with the count of films which occur the most times.
      select *
      from inventory;

      select film_id, count(film_id)
      from inventory
      group by film_id
      having count(film_id) = 8
      order by count(film_id) desc;
      
--The count is 8 and the title is called Garden Island.      

-- 4. How many customers have the last name ‘Williams’?
      SELECT first_name, last_name
      FROM customer
      WHERE last_name = 'Williams';

-- 5. What store employee (get the id) sold the most rentals?
      SELECT staff_id, COUNT(staff_id)
      FROM payment
      GROUP BY staff_id;

-- 6. How many different district names are there?
      SELECT COUNT(DISTINCT district)
      FROM address;

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
      select *
      from film_actor;

      select film_id, count(actor_id)
      from film_actor
      group by film_id 
      order by count(actor_id) desc;

-- The count is 15 & the film id is 508

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
      SELECT *
      FROM customer
      WHERE store_id = 1 AND last_name LIKE 'es';

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
      select *
      from payment;

      select amount, count(amount)
      from payment
      where customer_id between 380 and 430
      group by amount
      having count(amount) > 250;

-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
      SELECT COUNT(DISTINCT rating) AS rating_count
      FROM film;
      
      SELECT rating, COUNT(*) AS count
      FROM film
      GROUP BY rating
      ORDER BY count DESC
      LIMIT 1;

-- THe count is 223 and the rating is PG-13
