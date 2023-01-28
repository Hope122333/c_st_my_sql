-- Задание номер 8*: Добавить запись об удаленных отношениях(отписках)

-- В какой-то момент активность пользователей упала, чтобы найти причину , почему это происходит, потребовалось исследование вопроса.
--  Руководство предложило создать возможность сохранения данных об отписках среди пользователей, и посмотреть, есть ли взаимосвязь между
-- падением популярности приложения и , возможно, не достаточным комфортом пользователей при подписке на кого-то. 
-- Для того, чтобы осуществить задачу мы решили временно создать триггер в нашей базе данных, чтобы получить нужную информацию.
-- Для начала мы создали новую таблицу, а уже потом мы смогли переместить, благодаря триггеру , данные об отписках в новую таблицу.

CREATE TABLE unfollows (
    follower_id INTEGER NOT NULL,
    followee_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(follower_id) REFERENCES users(id),
    FOREIGN KEY(followee_id) REFERENCES users(id),
    PRIMARY KEY(follower_id, followee_id)
);



DELIMITER $$

CREATE TRIGGER follo
AFTER DELETE ON follows
    FOR EACH ROW
    BEGIN
        INSERT INTO unfollows
        SET
        follower_id = OLD.follower_id,
        followee_id = OLD.followee_id;
        
END;

$$ 
DELIMITER ;


