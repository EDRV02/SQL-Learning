use movielens;
-- q1
select title, release_date
from movies
where release_date < '1993-12-31' and  release_date > '1983-01-01';
-- q2
select movies.title, ratings.rating
from movies
join ratings on ratings.movie_id = movies.id
order by ratings.rating asc
;
-- q3
select distinct movies.title, genres.name, ratings.rating, users.age, users.gender
from movies
join genres_movies on genres_movies.movie_id = movies.id
join genres on genres.id = genres_movies.genre_id
join ratings on ratings.movie_id = movies.id
join users on ratings.user_id = users.id
where genres.name = 'Sci-Fi' and users.gender = 'M' and users.age = '24' and ratings.rating = '5';
-- q4
select count(release_date), title
from movies
group by title
order by count(release_date) desc
;
-- q5
select distinct  genres.name,  sum(movies.title)
from movies
join genres_movies on genres_movies.movie_id = movies.id
join genres on genres.id = genres_movies.genre_id
group by genres.name
order by sum(movies.title) asc
;