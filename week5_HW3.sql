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
  FROM customers
  JOIN payments
  ON customers.customer_id = payments.customer_id
  WHERE payments.amount > 6.99;

-- 3. Show all customers names who have made payments over $175(use subqueries)
	select first_name, last_name
	from customer
	where customer_id in (
		select customer_id
		from payments
		where amount > 175
	);
-- 4. List all customers that live in Nepal (use the city table)
	select customers.first_name, customers.last_name
	from customers
	join addresses as a 
	on customers.address_id = a.address_id
	join cities
	on a.city_id = cities.city_id
	where cities.city = 'Nepal';
	
-- 5. Which staff member had the most transactions?
	select staff.first_name, staff.last_name, count(1, transactions.transaction_id) as transaction_count
	from staff
	join transactions 
	on staff.staff_id = transactions.staff_id
	group by staff.staff_id
	group by transaction_count desc;
	
-- 6. How many movies of each rating are there?
	select rating, count(*) as movie_count
	from films
	group by rating;
	
-- 7.Show all customers who have made a single payment above $6.99 (Use Subqueries)
	select first_name, last_name
	from customers
	where customer_id in (
		select customer_id
		from payments
		group by customer_id
		Having count(*) = =1and max(amount) > 6.99
	);
-- 8. How many free rentals did our stores give away?
	select sum(free_rentals) as total_free_rentals
	from stores;
