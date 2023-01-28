-- Объеденим значения
SELECT CONCAT('pi', 'ckle');
 -- Объеденим фамилии и имена авторов 
SELECT CONCAT(author_fname,' ', author_lname) AS author_name FROM books;
 -- Создадим описание в виде названия, фамилии и имени
SELECT CONCAT_WS('-',title, author_fname, author_lname) FROM books;