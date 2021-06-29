--Найти информацию о всех контрактах, связанных с сотрудниками департамента «Logistic». 
--Вывести: contract_id, employee_name
SELECT contract_id, employee_name
FROM (
  SELECT *
  FROM department, employees, executor
  WHERE department.department_name = 'Logistic'
  AND department.id = employees.department_id
  AND employees.id = executor.tab_no
) t

