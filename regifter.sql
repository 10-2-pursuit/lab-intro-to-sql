-- Getting started, do not update
DROP DATABASE IF EXISTS regifter;
CREATE DATABASE regifter;
\c regifter
-- End getting started code
i regifte.sqlr
regifter-# psql
regifter-# DROP DATABASE IF EXISTS regifter;
ERROR:  syntax error at or near "i"
LINE 1: i regifte.sqlr
        ^
regifter=# DROP DATABASE IF EXISTS regifter;
ERROR:  cannot drop the currently open database
regifter=# CREATE DATABASE regifter;
ERROR:  database "regifter" already exists
regifter=# \c regifter-- Write your code below each prompt

--
\echo Create a table called gifts

 CREATE TABLE gifts (
regifter(#     id SERIAL PRIMARY KEY,
regifter(#     gift TEXT NOT NULL,
regifter(#     giver TEXT NOT NULL,
regifter(#     price DECIMAL(10, 2) NOT NULL,
regifter(#     previously_gifted BOOLEAN NOT NULL DEFAULT FALSE
regifter(# );
-- 
\echo See details of the table you created
-- 

regifter=# \d gifts;-- 
\echo Alter the table so that the column price is changed to value 
-- 

 ALTER TABLE gifts RENAME COLUMN price TO value;
ALTER TABLE-- 
\echo Insert a peach candle, given by 'Santa' thats value is 9 and has been previously regifted
-- 
INSERT INTO gifts (gift, giver, value, previously_gifted) VALUES ('peach candle', 'Santa', 9, FALSE);
INSERT 0 1
--
\echo Query for all the columns in your gifts table
-- 

regifter=# SELECT * FROM gifts
--
\echo Uncomment below to insert 5 more gifts
-- 

INSERT INTO gifts (gift, giver, value, previously_regifted)
VALUES
('peach candle', 'Santa', '9', TRUE),
('cinnamon candle', 'Nick', '19', TRUE),
('soap on a rope', 'Rudolf', '29', FALSE),
('potpurri', 'Elf on the Shelf', '39', TRUE),
('mango candle', 'The Boss', '49', FALSE)
;

-- 
\echo Insert 5 more gifts of your own choosing,  include 1 more candle
--
INSERT INTO gifts (gift, giver, value, previously_regifted)
VALUES
('cherry candle', 'Mark', '8', TRUE),
('blueberry candle', 'Mike', '18', FALSE),
('soap on a stick', 'Clyde', '28', TRUE),
('potpurri', 'reindeer on the roof', '38', TRUE),
('strawberry candle', 'A Boss', '48', TRUE);

--
\echo Query for gifts with a price greater than or equal to 20
--

SELECT * FROM gifts
regifter-# WHERE value >= 20;
--
\echo Query for every gift that has the word candle in it, only show the gift column
--

SELECT gift FROM gifts
regifter-# WHERE gift LIKE '%candle%';
       gift
--
\echo Query for every gift whose giver is Santa OR value is greater than 30
--
 SELECT * FROM gifts
regifter-# WHERE giver = 'Santa' OR value > 30;

--
\echo Query for every gift whose giver is NOT Santa
--
SELECT *
regifter-# FROM gifts
regifter-# WHERE giver <> 'Santa';--
 
\echo Update the second gift to have a value of 2999
-- 
UPDATE gifts
regifter-# SET value = 2999
regifter-# WHERE ctid IN (
regifter(#     SELECT ctid
regifter(#     FROM gifts
regifter(#     ORDER BY id
regifter(#     LIMIT 1 OFFSET 1
regifter(# );
UPDATE 1

--
\echo Query for the updated item
--
SELECT * FROM gifts WHERE value = 2999;
 id |      gift       | giver |  v

--
\echo Delete all the gifts from Santa and return the 'value' and 'gift' of the gift you have deleted
--
 WITH deleted AS (
regifter(#     DELETE FROM gifts WHERE giver = 'Santa' RETURNING value, gift
regifter(# )
regifter-# SELECT value, gift FROM deleted;

--
\echo Query for all the columns in your gifts table one more time
--
 SELECT * FROM gifts;


-- BONUSES

--
 \echo Count the total number of gifts that have the word candle in it
-- 
# SELECT COUNT(*) FROM gifts WHERE gift LIKE '%candle%';
 count

--
\echo Get the AVEREAGE value from all the gifts
--
SELECT AVG(value) FROM gifts;
         avg
-----------------

-- 
 \echo Limit to 3 gifts, offset by 2 and order by price descending
--
SELECT * FROM gifts ORDER BY value DESC LIMIT 3 OFFSET 2;
 id |       gift
--
-- finish
--
DROP TABLE IF EXISTS gifts;
 
DROP TABLE IF EXISTS gifts;
DROP TABLE
