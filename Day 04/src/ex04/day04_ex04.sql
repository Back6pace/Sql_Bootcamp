/*
    Write an SQL statement that satisfies the formula (R - S)∪(S - R) .
    Where R is the person_visits table with a filter through January 2, 2022, S is also the person_visits table but with a different filter through January 6, 2022. 
    Please do your calculations with sets under the person_id column and this column will be alone in a result. 
    Please sort the result by the person_id column and present your final SQL in the v_symmetric_union (*) database view.
    (*) To be honest, the definition of "symmetric union" doesn't exist in set theory. 
    This is the author's interpretation, the main idea is based on the existing rule of symmetric difference.
*/

create view v_symmetric_union as 
(select person_id
from person_visits as pv
where pv.visit_date = '2022-01-02'
except
select person_id
from person_visits as pv
where pv.visit_date = '2022-01-06')
union 
(select person_id
from person_visits as pv
where pv.visit_date = '2022-01-06'
except
select person_id
from person_visits as pv
where pv.visit_date = '2022-01-02')
order by 1