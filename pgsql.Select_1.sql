--Найти информацию о всех контрактах, связанных с сотрудниками департамента «Logistic». 
--Вывести: contract_id, employee_name
SELECT * 
FROM department, employees, executor, contract, customer 
LIMIT 50