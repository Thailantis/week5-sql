-- 1. List all customers who live in Texas(use joins)
    select *
    from city as c
    join address as A
    on c.city_id = a.city_id
    join customer as cu
    on a.city_id = cu.customer_id
    where city = 'Dallas';

-- 2. Get all payments above $6.99 with the Customer's Full Name
  SELECT amount, CONCAT(first_name ' ' last_name) = full_name
  FROM payment
  WHERE amount > (
	  SELECT amount > '6.99'
	  FROM payment
);

-- 3. Show all customers names who have made payments over $175(use subqueries)
	select customer, concat(first_name, ' ', last_name) as customer_name
	from customer
	where customer.customer_id in (
		select payment.customer_id
		from payment
		where payment.amount > 175
	);

-- 4. List all customers that live in Nepal (use the city table)

-- 5. Which staff member had the most transactions?

-- 6. How many movies of each rating are there?

-- 7.Show all customers who have made a single payment above $6.99 (Use Subqueries)

-- 8. How many free rentals did our stores give away?
