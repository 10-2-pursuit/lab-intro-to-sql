-- Getting started, do not update
DROP DATABASE IF EXISTS regifter;
CREATE DATABASE regifter;
\c regifter
-- End getting started code

--
-- Write your code below each prompt

--
\echo Create a table called gifts

regifter=# CREATE TABLE gifts (id SERIAL PRIMARY KEY, gift TEXT, giver TEXT, value INT, previously_regifted BOOLEAN);
-- with the following columns
-- id serial primary KEY
-- gift - string
-- giver - string
-- value - integer
-- previously_regifted boolean


-- 
\echo See details of the table you created
-- 
regifter=# \d gifts


-- 
\echo Alter the table so that the column price is changed to value 
-- 



-- 
\echo Insert a peach candle, given by 'Santa' thats value is 9 and has been previously regifted
-- 
INSERT INTO gifts (id, gift, giver, value, previously_regifted) VALUES (1, 'Peach Candle', 'Santa', 9, TRUE);

--
\echo Query for all the columns in your gifts table
-- 
regifter=# SELECT * FROM gifts;

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

regifter=# INSERT INTO gifts (gift, giver, value, previously_regifted)
regifter-# VALUES ('gameboy', 'Mom', '100', FALSE),
regifter-# ('puppy', 'Dad', '1000', FALSE),
regifter-# ('sketchpad', 'Grandma', '10', TRUE),
regifter-# ('baby doll', 'Aunt', '25', TRUE),
regifter-# ('jigsaw puzzle', 'Santa', '5', FALSE),
regifter-# ('vanilla candle', 'Neighbor', '10', TRUE);




--
\echo Query for gifts with a price greater than or equal to 20
--
regifter=# SELECT * FROM gifts WHERE value >= 20;
  3 | soap on a rope | Rudolf           |    29 | f
  4 | potpurri       | Elf on the Shelf |    39 | t
  5 | mango candle   | The Boss         |    49 | f
  6 | gameboy        | Mom              |   100 | f
  7 | puppy          | Dad              |  1000 | f
  9 | baby doll      | Aunt             |    25 | t

--
\echo Query for every gift that has the word candle in it, only show the gift column
--


--
\echo Query for every gift whose giver is Santa OR value is greater than 30
--


--
\echo Query for every gift whose giver is NOT Santa
--


--
\echo Update the second gift to have a value of 2999
-- 


--
\echo Query for the updated item
--


--
\echo Delete all the gifts from Santa and return the 'value' and 'gift' of the gift you have deleted
--


--
\echo Query for all the columns in your gifts table one more time
--



-- BONUSES

--
 \echo Count the total number of gifts that have the word candle in it
-- 


--
\echo Get the AVEREAGE value from all the gifts
--


-- 
 \echo Limit to 3 gifts, offset by 2 and order by price descending
--

--
-- finish
--
DROP TABLE IF EXISTS gifts;
