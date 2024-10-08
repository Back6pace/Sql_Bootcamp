/*
 Please make a select statement which returns one calculated field with name ‘person_information’ in one string like described in the next sample:
 Anna (age:16,gender:'female',address:'Moscow')
 Finally, please add the ordering clause by calculated column in ascending mode.
 Please pay attention to the quotation marks in your formula!
 */
select concat(
        person.name,
        ' (age:',
        person.age,
        ', gender:''',
        person.gender,
        '''',
        ', address:''',
        person.address,
        '''',
        ')'
    ) as person_information
from person
order by person_information asc