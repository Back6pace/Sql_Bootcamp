/*
    Write a SQL statement that returns missing days for people's visits in January 2022. 
    Use the v_generated_dates view for this task and sort the result by the missing_date column. 
    The sample data is shown below.
*/

select january as missing_date
from v_generated_dates
where not EXISTS (
    select 1
    from person_visits
    where january = visit_date
)
order by 1