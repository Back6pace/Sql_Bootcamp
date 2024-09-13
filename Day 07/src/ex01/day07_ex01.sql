/*
Please modify an SQL statement from Exercise 00 and return a person name (not an identifier). 
Additional clause is we need to see only top 4 people with maximum visits in each pizzerias and sorted by a person name. 
See the example of output data below.
*/

select p.name, count(visit_date) as count_visit_date
from person_visits
join person as p on p.id = person_visits.person_id
GROUP BY p.name
order by 2 desc, 1 asc
limit 4
