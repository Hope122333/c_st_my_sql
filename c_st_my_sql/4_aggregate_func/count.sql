-- Считаем все книги

SELECT COUNT(*) FROM books;
 
 -- Считаем все строки фамилий 
SELECT COUNT(author_lname) FROM books;
 
 -- Считаем все строки фамилий без дубликатов
SELECT COUNT(DISTINCT author_lname) FROM books;