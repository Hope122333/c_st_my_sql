-- Чтение строки наоборот.

SELECT REVERSE('Hello World');
 
SELECT REVERSE('meow meow');
 
SELECT REVERSE(author_fname) FROM books;
 
SELECT CONCAT('woof', REVERSE('woof'));
 
 -- Объединение функций.
 
SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;


