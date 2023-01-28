-- Отсортируем имена по алфавитному порядку
SELECT * FROM books
ORDER BY author_lname;
 
 -- Отсортируем имена по убыванию алфавитного порядка
SELECT * FROM books
ORDER BY author_lname DESC;
 
-- Отсортируем года по возрастранию 
SELECT * FROM books
ORDER BY released_year;

-- Отсортируем имена по убыванию
SELECT book_id, author_fname, author_lname, pages
FROM books ORDER BY 2 desc;
 
 -- Отсортируем сначала имена, а далее внутри групп имен отсортируем фамилии.
 
SELECT book_id, author_fname, author_lname, pages
FROM books ORDER BY author_lname, author_fname;