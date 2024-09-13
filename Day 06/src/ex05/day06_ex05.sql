/*
    To comply with Data Governance Policies, you need to add comments for the table and the table's columns. 
    Let's apply this policy to the person_discounts table. 
    Please add English or Russian comments (it is up to you) explaining what is a business goal of a table and all its attributes.
*/

comment on table person_discounts is
'Every person wants to see a personal discount and every business wants to be closer for customers.';
comment on column person_discounts.id is 'The primary key of the table.';
comment on column person_discounts.person_id is 'The person who has the discount.';
comment on column person_discounts.pizzeria_id is 'The pizzeria that has the discount.';
comment on column person_discounts.discount is 'The discount value in percent.'

