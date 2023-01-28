-- Отсеиваем книги, которые являются дубликатами по отношению к авторам

SELECT author_fname, author_lname, COUNT(*) 
FROM books 
GROUP BY author_lname, author_fname;
 
 -- Объединяем имена и фамилии для задачи , которую выполнили выше
 
SELECT CONCAT(author_fname, ' ', author_lname) AS author,  COUNT(*)
FROM books
GROUP BY author;