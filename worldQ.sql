use world;
-- q1
select count(city.name)
from city
join country on city.CountryCode = country.Code
where country.Code = 'USA' 
;
-- q2
select LifeExpectancy
from country
where Code = 'ARG';
-- q3
select country.Name, LifeExpectancy
from country
where LifeExpectancy is not null
order by LifeExpectancy desc
limit 1;
-- q4
select city.name
from city
join country on city.CountryCode = country.Code
where country.Capital = city.ID and country.Code = 'ESP'

;
-- q5
select countrylanguage.language, country.name
from countrylanguage
join country on country.Code = countrylanguage.CountryCode
where country.Region = 'Southeast Asia';
-- q6
select name
from city
where name like "F%"
limit 25
;
-- q7
select count(city.name)
from city
join country on country.Code = city.CountryCode
where country.Code = 'CHN';
-- q8
select name 
from country
where Population is not null
order by Population
limit 1;
-- q9
select count(Code)
from country;
-- q10
select name
from country
order by SurfaceArea desc
limit 10;
-- q11
select name
from city
where CountryCode = 'JPN'
order by Population desc
limit 5;
-- q12
update country
set HeadOfState = 'Elizabeth II'
where HeadOfState = 'Elisabeth II';
select name, Code
from country
where HeadOfState = 'Elizabeth II';
-- q13
select name, Population / SurfaceArea
from country 
where Population / SurfaceArea > 0
order by Population / SurfaceArea  asc
limit 10
;
-- q14
select distinct Language
from countryLanguage;
-- q15
select name, GNP
from country
order by GNP desc
limit 10;
-- q16
select country.name, count(countrylanguage.language)
from country
join countrylanguage on country.code = countrylanguage.countrycode
group by country.code
order by count(countrylanguage.language) desc;
-- q17
select * 
from countrylanguage
where Percentage > '50' and language = 'German';
-- q18
select name, lifeexpectancy
from country
where lifeexpectancy is not null
order by lifeexpectancy;
-- q19
select GovernmentForm, count(GovernmentForm)
from country
group by GovernmentForm
order by count(GovernmentForm) desc
limit 3;
-- q20
select name
from country 
where IndepYear is not null;