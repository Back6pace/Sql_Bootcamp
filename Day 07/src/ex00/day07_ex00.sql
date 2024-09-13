/*
    Let's make a simple aggregation, please write a SQL statement that returns person identifiers and 
    corresponding number of visits in any pizzerias and sorts by number of visits in descending mode and sorts by person_id in ascending mode. 
    Please take a look at the sample of data below.
*/

select person_id, count(visit_date) as count_visit_date
from person_visits
GROUP BY person_id
order by 2 desc, 1 asc