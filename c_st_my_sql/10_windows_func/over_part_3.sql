-- Пройдемся "роликом" по таблице , складывая все значения левого столбца построчно, отельно выведем общее значение суммы

SELECT 
    emp_no, 
    department, 
    salary, 
    SUM(salary) OVER(PARTITION BY department ORDER BY salary) AS rolling_dept_salary,
    SUM(salary) OVER(PARTITION BY department) AS total_dept_salary
FROM employees;
 
 
 -- Отсортируем внутри оконной функции значения по убыванию
 
SELECT 
    emp_no, 
    department, 
    salary, 
    MIN(salary) OVER(PARTITION BY department ORDER BY salary DESC) as rolling_min
FROM employees
 
 

 

 
