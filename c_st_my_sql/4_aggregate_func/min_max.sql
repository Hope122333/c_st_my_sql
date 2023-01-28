-- По максмальному количеству страниц выбираем названия книг

SELECT title, pages FROM books
WHERE pages = (SELECT MAX(pages) FROM books);
 
 -- Находим самую раннюю книгу по году
 
SELECT MIN(released_year) FROM books;
 
 -- Выбираем название этой книги
 
SELECT title, released_year FROM books 
WHERE released_year = (SELECT MIN(released_year) FROM books);