use sakila;
-- Q1
select * from actor;

-- Q2
select *
from actor
where first_name = 'John';
-- Q3
select *
from actor
where last_name = 'Neeson';
-- Q4
select * 
from actor
where actor_id % 10 = 0; 
-- Q5
select description
from film
where film_id = 100;
-- Q6
select *
from film
where rating = 'R';
-- Q7
select *
from film
where rating != 'R';
-- Q8
select *
from film
order by length 
limit  10;
-- Q9
select *
from film 
order by length desc;
-- Q10
select *
from film
where special_features = 'Deleted Scenes';
-- Q11
select  last_name
from actor
group by last_name
having count(last_name) = 1
order by last_name desc;
-- Q12
select last_name, count(last_name)
from actor
group by last_name
having count(last_name) > 1
order by count(last_name) desc; 
-- Q13
select first_name, last_name, actor_id
from actor
where actor_id = (select actor_id 
					from film_actor
					group by actor_id
                    order by count(actor_id) desc
                    limit 1);
-- Q14
select rental_duration from film where title = 'Academy Dinosaur';
-- Q15
select avg(length) as average_runtime 
from film;
-- Q16
select avg(film.length) as average_runtime, category.name
from category
join film_category on category.category_id = film_category.category_id
join film on film.film_id = film_category.film_id
group by category.category_id
order by avg(film.length) desc;
-- Q17
select *
from film
where description like '%robot%';
-- Q18
select * from film where release_year = '2010';
-- Q19
select film.title, category.name
from category
join film_category on category.category_id = film_category.category_id
join film on film.film_id = film_category.film_id
where category.name = 'horror';
-- Q20
select first_name, last_name
from staff
where staff_id = '2';
-- Q21
select film.title
from actor
join film_actor on actor.actor_id = film_actor.actor_id
join film on film_actor.film_id = film.film_id
where actor.first_name = 'Fred' AND actor.last_name = 'Costner';
-- Q22
select distinct country
from country;
-- Q23
select name 
from language
order by name desc;
-- Q24
select first_name
from actor
where last_name like '%son'
order by first_name asc;
-- Q25
select count(category.name), category.name
from category
join film_category on category.category_id = film_category.category_id
join film on film.film_id = film_category.film_id
group by category.name
order by count(category.name) desc
;