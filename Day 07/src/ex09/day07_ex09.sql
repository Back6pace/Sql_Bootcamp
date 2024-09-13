/*
    Please write a SQL statement that returns aggregated information by person's address, 
    the result of "Maximum Age - (Minimum Age / Maximum Age)" presented as a formula column, 
    next is average age per address and the result of comparison between formula and 
    average columns (in other words, if formula is greater than average, then True, otherwise False value).
    The result should be sorted by address column. Please take a look at the example of output data below.
*/

select p.address, 
    round(max(p.age) - min(age) / max(age::NUMERIC),2) as formula,
    round(avg(age),2) as average,
   case
        when round(max(p.age) - min(age) / max(age::NUMERIC),2) > round(avg(age),2) then true
        else FALSE
    end as comparison
from person as p
GROUP BY p.address
order by 1