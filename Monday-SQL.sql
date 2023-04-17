SHOW TABLES;

-- VARCHAR is a string with a max number of characters
CREATE TABLE movies(title VARCHAR(255) NOT NULL UNIQUE, actor VARCHAR(255) DEFAULT 'Not Specified');

-- the C of CRUD: create!
INSERT INTO movies VALUES('Spiderman', 'Tom Holland');
INSERT INTO movies VALUES('Iron Man', 'Robert Downey Jr');
INSERT INTO movies VALUES('Ant Man', 'Paul Rudd');
-- won't work:
-- INSERT INTO movies VALUES('Superman');
INSERT INTO movies (title) VALUES('Superman');

-- the R of CRUD: read time
SELECT * FROM movies;

-- the U of CRUD: lets update
UPDATE movies
SET actor='Christopher Reeve'
WHERE title='Superman';

-- the D of CRUD: deletion danger zone
DELETE FROM movies
WHERE title='Superman';

-- if we want to delete by a non-key value, we have to disable safe updates
DELETE FROM movies
WHERE actor='Christopher Reeve';