/*  
 Please make a select statement 
 which returns all person's names and person's ages from the city ‘Kazan’.
 */
select name,
    age
from person
where person.address = 'Kazan'