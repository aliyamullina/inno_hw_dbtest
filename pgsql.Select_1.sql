--Найти информацию о всех контрактах, связанных с сотрудниками департамента «Logistic». 
--Вывести: contract_id, employee_name
SELECT contract_id, name as employee_name
FROM department
  JOIN employees ON department.id = employees.department_id
  JOIN executor ON employees.id = executor.tab_no
WHERE department.department_name = 'Logistic'
ORDER BY name 