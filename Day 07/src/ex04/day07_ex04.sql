/*
    Please write a SQL statement that returns the person's name and the 
    corresponding number of visits to any pizzerias if the person has visited more than 3 times (> 3). 
    Please take a look at the sample data below.
*/

select p.name, count(pv.visit_date) as count_visit_date
from person_visits as pv
join person as p on p.id = pv.person_id
GROUP BY p.name
HAVING count(pv.visit_date) > 3