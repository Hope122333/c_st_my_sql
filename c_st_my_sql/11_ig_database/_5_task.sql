-- Задание номер 5: Нам нужно найти среднее количество фотографий для каждого пользователя.

-- У любой компании рано или поздно возникает вопрос о привлечении новых инвесторов, инвесторов могут заинтересовать различные аспекты, но обычно,
-- инвесторов больше всего интересуют деньги, а если быть точнее, то прибыль. Поэтому мы нашли в наших данных информацию, которая может 
-- действительно повлиять на решение инвесторов. В данном случае - это среднее количество постов на каждого пользователя. Не смотря на то,
-- что наше приложение существует сравнительно недавно, у нас уже больше двух записей для каждого пользователя, что может быть связано с 
-- заинтересованнностью пользователей.


SELECT (SELECT Count(*) 
        FROM   photos) / (SELECT Count(*) 
                          FROM   users) AS avg; 
