SELECT * FROM books;

-- Questions
-- Update the publisher of Sense and Sensibility to Random House?

UPDATE books SET publisher = 'Random House' WHERE title = 'Sense and Sensibility';

-- Find the average price of a Jane Austen book?

SELECT AVG(price) FROM books WHERE author = 'Jane Austen';

-- Find the total price of all the George Orwell books that are in stock?

SELECT SUM(price) FROM books WHERE author = 'George Orwell' AND in_stock = true;

-- How many books are in stock and how many are out of stock? (2 statments for this)

SELECT COUNT(*) FROM books WHERE in_stock = true;
SELECT COUNT(*) FROM books WHERE in_stock = false;

-- How many books don't have a publisher known?

SELECT COUNT(*) FROM books WHERE publisher = 'Not Known';

-- What is the highest priced book thats in stock?

SELECT MAX(price) FROM books WHERE in_stock = true;


-- Stretch goals 
-- Find all the authors names that start with a J 

SELECT author FROM books WHERE author LIKE 'J%';