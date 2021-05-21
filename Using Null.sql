Q1.
List the teachers who have NULL for their department.

select name from teacher where dept IS NULL; 


Q2.
Note the INNER JOIN misses the teachers with no department and the departments with no teacher.

SELECT teacher.name, dept.name
 FROM teacher INNER JOIN dept
           ON (teacher.dept=dept.id)
           
           
Q3.
 Use a different JOIN so that all teachers are listed.
 
 select teacher.name, dept.name from teacher
 LEFT JOIN  dept ON teacher.dept=dept.id ; 
 
 
Q4.
 Use a different JOIN so that all departments are listed.
 
 select teacher.name, dept.name from teacher
 RIGHT JOIN  dept ON teacher.dept=dept.id ; 
 
 
Q5.
Use COALESCE to print the mobile number. Use the number '07986 444 2266' if there is no number given. Show teacher name and mobile number or '07986 444 2266'

select teacher.name, COALESCE(mobile, '07986 444 2266')
from teacher ; 


Q6.
Use the COALESCE function and a LEFT JOIN to print the teacher name and department name. Use the string 'None' where there is no department.

select teacher.name, COALESCE(dept.name, 'None') from teacher
 LEFT JOIN  dept ON teacher.dept=dept.id ; 
 
 
Q7.
Use COUNT to show the number of teachers and the number of mobile phones.

select count(name), count(mobile)
from teacher ; 


Q8.
Use COUNT and GROUP BY dept.name to show each department and the number of staff. Use a RIGHT JOIN to ensure that the Engineering department is listed.

select dept.name, count(teacher.name) from teacher
RIGHT JOIN  dept ON teacher.dept=dept.id
GROUP BY dept.name


Q9.
Use CASE to show the name of each teacher followed by 'Sci' if the teacher is in dept 1 or 2 and 'Art' otherwise.

SELECT name, CASE WHEN dept IN (1,2) 
THEN 'Sci'
ELSE 'Art' END
FROM teacher; 


Q10.
Use CASE to show the name of each teacher followed by 'Sci' if the teacher is in dept 1 or 2, show 'Art' if the teacher's dept is 3 and 'None' otherwise.


SELECT name, CASE WHEN dept IN (1,2) 
  THEN 'Sci'
  WHEN dept = 3 
  THEN 'Art'
  ELSE 'None' END
  FROM teacher; 





 
