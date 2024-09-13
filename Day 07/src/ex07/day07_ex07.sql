/*
    Write an SQL statement that returns a common average rating (the output attribute name is global_rating) for all restaurants. Round your average rating to 4 floating point numbers.
*/

select round(avg(z.rating), 4) as global_rating
from pizzeria as z