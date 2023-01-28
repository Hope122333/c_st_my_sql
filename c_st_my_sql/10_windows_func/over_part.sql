-- Добавим оконную функцию

SELECT emp_no, department, salary, AVG(salary) OVER() FROM employees;


-- Отобразим два окна

SELECT 
    emp_no, 
    department, 
    salary, 
    MIN(salary) OVER(),
    MAX(salary) OVER()
FROM employees;

-- Разобьем средние значения по секциям , в данном случае по столбцу department, это будут группы распределения для значений

SELECT 
    emp_no, 
    department, 
    salary, 
    AVG(salary) OVER(PARTITION BY department) AS dept_avg,
    AVG(salary) OVER() AS company_avg
FROM employees;
 
 

 

 
