/*
    Actually, we need to improve data consistency from one side and performance tuning from the other side. 
    Please create a multi-column unique index (named idx_person_discounts_unique) that prevents duplicates of the person and pizzeria identifier pairs.
    After creating a new index, please provide any simple SQL statement that shows proof of the index usage (using EXPLAIN ANALYZE).
    The proof example is below:
*/

CREATE unique index idx_person_discounts_unique on person_discounts(person_id, pizzeria_id);

set enable_seqscan = off;
EXPLAIN ANALYZE
select person_id, pizzeria_id
from person_discounts