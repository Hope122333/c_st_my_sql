-- Просмотр столбцов
SELECT article, color FROM shirts;


-- Поиск значений по параметру 
SELECT * FROM shirts WHERE shirt_size='M';


-- Поиск значений столбцов по параметру 
 
SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size='M';