/*
    Please write a SQL statement that returns all possible combinations between person and pizzeria tables, 
    and please set the order of the person identifier columns and then the pizzeria identifier columns. 
    Please take a look at the sample result below. 
    Please note that the column names may be different for you.
*/

select p.id, p.name, p.age, p.gender, p.address, z.id, z.name, z.rating
from person p
cross join pizzeria z
order by p.id, z.id