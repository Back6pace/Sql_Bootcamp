/*
    Write an SQL statement that returns the order date from the person_order table and the corresponding person name 
    (name and age are formatted as in the data sample below) 
    who made an order from the person table. Add a sort by both columns in ascending order.
*/

select order_date, concat(person.name, '(age:','',person.age, ')') as person_information
from person_order
join person on person.id = person_order.person_id
order by order_date, person_information