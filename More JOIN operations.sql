Q1.
List the films where the yr is 1962 [Show id, title]

SELECT id, title
 FROM movie
 WHERE yr=1962 ; 
 
 
 Q2.
 When was Citizen Kane released?
 
 select yr 
from movie
where title = 'Citizen Kane' ; 


Q3.
List all of the Star Trek movies, include the id, title and yr (all of these movies include the words Star Trek in the title). Order results by year.

select id, title,yr
from movie 
where title LIKE 'Star Trek%'
order by yr ; 


Q4.
What id number does the actor 'Glenn Close' have?

select id from actor
where name = 'Glenn Close' ; 


Q5.
What is the id of the film 'Casablanca'

select id from movie where title = 'Casablanca' ; 


Q6.
Obtain the cast list for 'Casablanca'.

SELECT name
  FROM casting, actor
  WHERE movieid=(SELECT id 
             FROM movie 
             WHERE title='Casablanca')
    AND actorid=actor.id ; 
    
    
Q7.
Obtain the cast list for the film 'Alien'

SELECT name FROM
   movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id
  WHERE movie.title='Alien' ; 
    
    
 Q8.
 List the films in which 'Harrison Ford' has appeared
 
 SELECT title FROM
   movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id
  WHERE actor.name='Harrison Ford' ; 
  
  
 Q9.
 List the films where 'Harrison Ford' has appeared - but not in the starring role.
 
 select title from movie
JOIN casting ON movie.id=movieid
JOIN actor ON actorid=actor.id
where name = 'Harrison Ford' and NOT ord = 1 ; 


Q10.
List the films together with the leading star for all 1962 films.

select title, name from movie
JOIN casting ON movie.id=movieid
JOIN actor ON actorid=actor.id
where yr = 1962 and ord = 1 ; 


Q11.
Which were the busiest years for 'Rock Hudson', show the year and the number of movies he made each year for any year in which he made more than 2 movies.



Q12.
List the film title and the leading actor for all of the films 'Julie Andrews' played in.

SELECT title, name FROM movie
JOIN casting ON (movie.id=movieid AND ord = 1)
JOIN actor ON actorid=actor.id
where movie.id IN (
select movieid FROM casting 
WHERE actorid IN (
select id from actor
where name = 'Julie Andrews' )) ; 


Q13.
Obtain a list, in alphabetical order, of actors who've had at least 15 starring roles.

select  name  from movie 
JOIN casting ON movie.id=movieid 
JOIN actor   ON actorid=actor.id
where  ord=1
group by name 
having count(movieid)>=15 ; 


Q14.
List the films released in the year 1978 ordered by the number of actors in the cast, then by title.





























  
  
  
  
  
  
  
  
  
 
















 
