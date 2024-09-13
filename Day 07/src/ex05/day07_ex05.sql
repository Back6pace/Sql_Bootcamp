/*
    Please write a simple SQL query that returns a list of unique person names who have placed orders at any pizzerias. 
    The result should be sorted by person name. 
    Please see the example below.
*/

select DISTINCT p.name
from person_order AS po
join person as p on p.id = po.person_id
order by 1
