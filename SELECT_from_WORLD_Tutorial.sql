Q1. 
Observe the result of running this SQL command to show the name, continent and population of all countries.

SELECT name, continent, population FROM world


Q2.
How to use WHERE to filter records. Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.

SELECT name
  FROM world
 WHERE population > 2000000000
 
 
 Q3.
 Give the name and the per capita GDP for those countries with a population of at least 200 million.
 
 select name , gdp/1000000000000  
from world
where population>200000000
 




