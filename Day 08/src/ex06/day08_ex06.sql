-- Session 1
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- Session 2
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

SHOW TRANSACTION ISOLATION LEVEL;

-- Session 1
SELECT SUM(rating) FROM pizzeria;
-- Session 2
SELECT SUM(rating) FROM pizzeria;

INSERT INTO pizzeria(id, name, rating) VALUES (11, 'Kazan Pizza 2', 4);

COMMIT;

-- Session 1
SELECT SUM(rating) FROM pizzeria;

COMMIT;

SELECT SUM(rating) FROM pizzeria;

-- Session 2
SELECT SUM(rating) FROM pizzeria;