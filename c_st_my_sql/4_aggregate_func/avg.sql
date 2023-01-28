-- Находим среднее число страниц в книгах

SELECT AVG(pages) FROM books;
 
 -- Находим средний год для книг
 
SELECT AVG(released_year) FROM books;
 
 -- Группируем по годам количества книг, среднее количество книг на складе, и выводим это все вместе с годом
 
SELECT 
    released_year, 
    AVG(stock_quantity), 
    COUNT(*) FROM books
GROUP BY released_year;