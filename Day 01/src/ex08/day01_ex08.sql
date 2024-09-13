/*
Please rewrite a SQL statement from Exercise #07 by using NATURAL JOIN construction. 
The result must be the same like for Exercise #07.
*/

select order_date, concat(p.name, '(age:','',p.age, ')') as person_information
from person as p(person_id)
natural join person_order
order by order_date, person_information