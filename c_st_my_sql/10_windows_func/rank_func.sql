-- Используем методы ранжирования таблицы, разница состоит в том, что при использовании RANK получаем все значения по рангам с пропуском значений для повторяемых
-- значений, а при использовании DENSE_RANK дважды выявленные значения не будут переводить значение на столько позиций вперед, сколько было повторяемых значений.
-- Другими словами, при использовании DENSE_RANK сохраняется внешняя математическая последовательность, и при применении DENSE_RANK сохраняется внутренняя
-- математическая последовательность. Ранги же делятся при сортировке, которая определяется в параметрах ORDER BY.

SELECT 
    emp_no, 
    department, 
    salary,
    ROW_NUMBER() OVER(PARTITION BY department ORDER BY SALARY DESC) as dept_row_number,
    RANK() OVER(PARTITION BY department ORDER BY SALARY DESC) as dept_salary_rank,
    RANK() OVER(ORDER BY salary DESC) as overall_rank,
    DENSE_RANK() OVER(ORDER BY salary DESC) as overall_dense_rank,
    ROW_NUMBER() OVER(ORDER BY salary DESC) as overall_num
FROM employees ORDER BY overall_rank;
 

 

 
