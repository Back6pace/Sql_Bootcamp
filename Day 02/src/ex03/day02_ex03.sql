/*
    Let's go back to Exercise #01, please rewrite your SQL using the CTE (Common Table Expression) pattern. 
    Please go to the CTE part of your "day generator". The result should look similar to Exercise #01.
*/

WITH gen_date AS (
    SELECT generate_series('2022-01-01', '2022-01-10', interval '1 day')::date as missing_date
),
per_vis as (
	select visit_date from person_visits
	where person_id = 1 or person_id = 2 and visit_date BETWEEN '2022-01-01'AND '2022-01-10'
)
select gen_date.missing_date from gen_date
left join per_vis on gen_date.missing_date = per_vis.visit_date
where per_vis.visit_date is null
ORDER BY gen_date.missing_date;