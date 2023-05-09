-- 1. List all customers who live in Texas(use joins)
    select *
    from customer as c
    join address as a
    on c.address_id = a.address_id
    join city as ci
    on a.city_id = ci.city_id
    where city = 'Dallas';

-- 2. Get all payments above $6.99 with the Customer's Full Name
  SELECT amount, CONCAT(first_name, ', ' ,last_name) = full_name
  FROM customer as c
  JOIN payment as p
  ON c.customer_id = p.customer_id
  WHERE p.amount > 6.99;

-- 3. Show all customers names who have made payments over $175(use subqueries)
	select c.first_name, c.last_name
	from customer as c
	where c.customer_id in (
		select p.customer_id
		from p.payment
		where p.amount > 175
	);
-- 4. List all customers that live in Nepal (use the city table)
	select c.first_name, c.last_name
	from customer as c
	join addresses as a 
	on c.customer_id = a.address_id
	join cities as ci
	on a.city_id = ci.city_id
	join country as co
	And ci.country_id = co.country.id
	where co.country = 'Nepal';
	
-- 5. Which staff member had the most transactions?
	select staff.first_name, staff.last_name, count(transactions.transaction_id) as transaction_count
	from staff
	join transaction 
	on staff.staff_id = transactions.staff_id
	group by staff.staff_id
	group by transaction_count desc
	LIMIT BY 1;
	
-- 6. How many movies of each rating are there?
	select rating, count(*) as movie_count
	from film
	group by rating;
	
-- 7.Show all customers who have made a single payment above $6.99 (Use Subqueries)
	select c.first_name, c.last_name
	from customer as c
	where c.customer_id in (
		select payment.customer_id
		from payment
		group by payment.customer_id
		Having count(*) = 1 and max(payment.amount) > 6.99
	);
-- 8. How many free rentals did our stores give away?
	select SUM(s.free_rentals) AS total_free_rentals
	from store;
