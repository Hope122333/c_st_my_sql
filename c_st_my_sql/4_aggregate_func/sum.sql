-- Находим количество страниц в книгах

SELECT SUM(pages) FROM books;
 
 -- Для каждой фамилии в таблице находим количество книг и количество страниц в этих книгах
 
SELECT author_lname, COUNT(*), SUM(pages)
FROM books
GROUP BY author_lname;