/*
Let's go back to Exercise #03 and modify our SQL statement to return person names 
instead of person identifiers and change the order by action_date in ascending 
mode and then by person_name in descending mode. Take a look at the sample data below.
*/

select order_date as action_date, person.name 
from person_order
join person on person.id = person_order.person_id

intersect

select visit_date as action_date, person.name 
from person_visits
join person on person.id = person_visits.person_id

order by action_date asc, name desc