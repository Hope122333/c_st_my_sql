-- Задание номер 2: Найти день недели, в который пользователи регистрируются чаще, чем в другие дни

-- Допустим, мы хотим запустить рекламную акцию в нашем быстрорастущем приложении, в какой день мы сможем привлечь внимание большего количества людей..? Давайте узнаем это.

SELECT 
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;