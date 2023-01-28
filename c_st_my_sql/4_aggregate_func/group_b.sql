-- Выполняем группировку подсчетом для каждой фамилии

SELECT author_lname, COUNT(*) 
FROM books
GROUP BY author_lname;
 
 -- Выполняем группировку количества книг для каждой фамилии и сортируем результат по убыванию
 
SELECT 
    author_lname, COUNT(*) AS books_written
FROM
    books
GROUP BY author_lname
ORDER BY books_written DESC;