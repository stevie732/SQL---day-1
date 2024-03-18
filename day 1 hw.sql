-- Query for Last_name in the actor table
SELECT Last_name
FROM actor
where Last_name = 'Wahlberg';

-- Query for data that shows customers who paid
-- an amount BETWEEN $3.99 and $5.99
-- Using the BETWEEN with the AND clause
SELECT customer_id,amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- Query for data that shows films in inventory
select film.title
from film
join inventory on film.film_id = inventory.film_id
group by film.title
order by count(*)
limit 1;

-- Query for list of customers with the Last_name William
select count(*)
from customer
where last_name = 'William'

--Query that shows the employee that sold the most rentals
select staff_id 
from rental
group by staff_id 
order by count(*) desc
limit 1;


-- Query that shows how many district names there  are
select *
from pg_catalog.pg_timezone_names ;


-- Query that shows the film with the most actors in it
select film_id, count(actor_id) as num_actors
from film_actor 
group by film_id
order by num_actors desc
limit 1;


-- Query for data showing how many customers last_name end in 'es and a wildcard
select first_name,last_name
from customer
where last_name like '__%es';

-- Query that shows data for payment amounts, and number of rental with ids between 380 and 430
select film_id, count(actor_id) as actor_count
from film_actor
group by film_id
order by actor_count desc
limit 1;

-- Query for data that shows how many rating categories there are and what rating has the most movies total
select count(distinct rating) as num_rating_categories
from film;

