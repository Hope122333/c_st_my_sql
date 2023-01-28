-- Выведем три первые записи из названий книг

SELECT title FROM books LIMIT 3;
 
 -- Узнаем, как названа первая книга в таблице
SELECT title FROM books LIMIT 1;
 
 -- Узнаем, как названы первые 10 книг в таблице
SELECT title FROM books LIMIT 10;
 
 -- Узнаем все данные первой книги в таблице
SELECT * FROM books LIMIT 1;
 
 -- Узнаем название и год пяти книг с самым современным временем издания
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 5;
 
 -- Узнаем название и год одной книги , выпущенной последней среди других книг
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 1;
 
 -- Узнаем название и год четырнадцати книг с самым крупным годом
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 14;
 
 -- Создадим диапазон для книг, выпущенных последними, размером 5 книг, с 1 по 5
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 0,5;
 
 -- Создадим дапазон для книг, выпущенных последними, размером 3 книги, с 1 по 3
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 0,3;
 
 -- Создадим диапазон для книг, выпущенных последними, размером 3 книги, со 2 по 4
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 1,3;
 
 -- Выберем десятое значение по убыванию выпуска книг в таблице
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 10,1;
 
 
SELECT title FROM books LIMIT 5;
 
 -- Выберем все книни с 5 .
SELECT title FROM books LIMIT 5, 123219476457;
 


