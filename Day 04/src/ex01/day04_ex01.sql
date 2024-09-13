/*
    Please use 2 Database Views from Exercise #00 and write SQL to get female and male person names in one list. 
    Please specify the order by person name. 
    The sample data is shown below.
*/
select name 
from v_persons_female

union

select name
from v_persons_male
order by 1