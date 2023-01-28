
-- Найдем название по значению для фамилии
SELECT title, author_fname, author_lname, pages 
FROM books
WHERE author_fname LIKE '%da%';
 
 -- Найдем книги, в названии которых есть двоеточие
SELECT title, author_fname, author_lname, pages 
FROM books
WHERE title LIKE '%:%';
 
 -- Найдем авторов с четырьмя буквами в имени
SELECT * FROM books
WHERE author_fname LIKE '____';
 
 -- Найдем автора , имя которого, состоит из 3 букв, в середине имени содержится буква а
 
SELECT * FROM books
WHERE author_fname LIKE '_a_';

-- Выберем книги с '%' в их названии
SELECT * FROM books
WHERE title LIKE '%\%%';
 
-- 
-- Выборем книги с подчеркиванием "_" в названии
SELECT * FROM books
WHERE title LIKE '%\_%';