Q1.
Show the total population of the world.

SELECT SUM(population)
FROM world ; 


Q2.
List all the continents - just once each.

select distinct(continent) from world ; 


Q3.
GDP of Africa

select SUM(gdp) from world where continent = 'Africa' ; 


Q4.
How many countries have an area of at least 1000000

select COUNT(name) from world where area > 1000000 ; 


Q5.
What is the total population of ('Estonia', 'Latvia', 'Lithuania')

select sum(population) from world where name in  ('Estonia', 'Latvia', 'Lithuania') ;  


Q6.
For each continent show the continent and number of countries.

select continent, count(name)
from world 
group by continent  ; 


Q7.
For each continent show the continent and number of countries with populations of at least 10 million.

select continent , count(name)
from world 
where population > 10000000
group by continent ; 


Q8.
List the continents that have a total population of at least 100 million.

select continent 
from world 
group by continent
having sum(population) > 100000000 ; 
