-- создание первой таблицы

CREATE TABLE employees (
    id INT AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed',
    PRIMARY KEY(id)
);


-- вставка первых данных

INSERT INTO employees(first_name, last_name, age) VALUES
('Dora', 'Smith', 58);