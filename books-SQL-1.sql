CREATE TABLE books (
	title VARCHAR(255) NOT NULL UNIQUE,
    author VARCHAR(255) NOT NULL,
    publisher VARCHAR(255) DEFAULT 'Not Known',
    price INT,
    genre VARCHAR(255) DEFAULT 'Not Specified',
    in_stock BOOLEAN NOT NULL -- booleans are represented as 0 and 1 in SQL
);

SHOW TABLES;

INSERT INTO books (title, author, price, genre, in_stock)  VALUES ("Lord of The Rings", "J.R.R Tolkien", 6, "Fantsy", true);
INSERT INTO books VALUES ("The Shinning", "Stephen King", "Random House", 5, "Horror", false);
INSERT INTO books  VALUES ("Wuthering Heights", "Emily Bronte", "Penguin", 5, "Romance", true);
INSERT INTO books (title, author, publisher, price, in_stock) VALUES ("Emma", "Jane Austin", "Harper Collins", 16, false);
INSERT INTO books (title, author, publisher, price, in_stock)  VALUES ("Pride and Prejudice", "Jane Austin", "Penguin", 6, true);
INSERT INTO books (title, author, price, in_stock)  VALUES ("Dubliners", "James Joyce", 10, false);
INSERT INTO books (title, author, price, in_stock)  VALUES ("Ulysses", "James Joyce", 10, false);
INSERT INTO books (title, author,  publisher, price, in_stock)  VALUES ("War and Peace", "Leo Tolstoy", "Penguin", 18, true);
INSERT INTO books VALUES ("The Hobbit", "J.R.R Tolkien", "Harper Colins", 6, "Fantsy", true);
INSERT INTO books VALUES ("1984", "George Orwell", "Penguin", 5, "Dystopian", false);
INSERT INTO books (title, author, price, genre, in_stock) VALUES ("Animal Farm", "George Orwell", 9, "Dystopian", true);
INSERT INTO books (title, author, publisher, price, in_stock)  VALUES ("It", "Stephen King", "Random House", 14, true);
INSERT INTO books (title, author, publisher, price, in_stock)  VALUES ("Sense and Sensibility ", "Jane Austin", "Penguin", 6, true); 

SELECT * FROM books;
SELECT * FROM books WHERE id % 2 = 0;
SELECT * FROM books WHERE id % 2 != 0;

ALTER TABLE books ADD id INT UNIQUE PRIMARY KEY AUTO_INCREMENT;

UPDATE books SET genre = 'Fantasy' WHERE genre = 'Fantsy';
UPDATE books SET author = 'Jane Austen' WHERE author = 'Jane Austin';

DELETE FROM books WHERE title = 'Lord of The Rings';

-- Agregate Functions:

-- Count
SELECT COUNT(title) FROM books WHERE author = 'Jane Austen';
SELECT COUNT(*) FROM books;
SELECT COUNT(*) AS total_books FROM books;

-- Average (AVG)
SELECT AVG(price) FROM books;
SELECT AVG(price) FROM books WHERE genre = 'Fantasy';
SELECT AVG(price) AS penguin_average_price FROM books WHERE publisher = 'Penguin';