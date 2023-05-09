-- 1. List all customers who live in Texas(use joins)
    select *
    from customer as c
    join address as a
    on c.address_id = a.address_id
    on a.city_id = city_id
    where a.district = 'Texas';

-- 2. Get all payments above $6.99 with the Customer's Full Name
  SELECT amount, CONCAT(first_name, ', ', last_name) AS full_name
  FROM customer as c
  JOIN payment as p
  ON c.customer_id = p.customer_id
  WHERE p.amount > 6.99;

-- 3. Show all customers names who have made payments over $175(use subqueries)
	select c.first_name, c.last_name
	from customer as c
	where c.customer_id in (
		select customer_id
		from payment
		where amount > 175
	);
-- 4. List all customers that live in Nepal (use the city table)
	SELECT c.first_name, c.last_name
	FROM customer as c
	JOIN addresses as a 
	ON c.customer_id = a.address_id
	JOIN cities as ci
	ON a.city_id = ci.city_id
	JOIN country as co
	AND ci.country_id = co.country.id
	WHERE co.country = 'Nepal';
	
-- 5. Which staff member had the most transactions?
	select staff.first_name, staff.last_name, count(transactions.transaction_id) as transaction_count
	from staff
	join transaction 
	on staff.staff_id = transactions.staff_id
	group by staff.staff_id
	order by transaction_count desc
	LIMIT 1;
	
-- 6. How many movies of each rating are there?
	select rating, count(*) as movie_count
	from film
	group by rating;
	
-- 7.Show all customers who have made a single payment above $6.99 (Use Subqueries)
	SELECT c.first_name, c.last_name
	FROM customer as c
	WHERE c.customer_id in (
		SELECT payment.customer_id
		FROM payment
		GROUP BY payment.customer_id
		HAVING count(*) = 1 and MAX(payment.amount) > 6.99
	);
-- 8. How many free rentals did our stores give away?
	SELECT SUM(s.free_rentals) AS total_free_rentals
	FROM store_info;
