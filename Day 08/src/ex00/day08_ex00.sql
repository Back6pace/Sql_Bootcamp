-- Session 1
BEGIN;

-- Session 2
SELECT * FROM pizzeria
WHERE name = 'Pizza Hut';

-- Session 1
SELECT * FROM pizzeria
WHERE name = 'Pizza Hut';

UPDATE pizzeria
SET rating = 5
WHERE name = 'Pizza Hut';

COMMIT;

-- Session 2
SELECT * FROM pizzeria
WHERE name = 'Pizza Hut';