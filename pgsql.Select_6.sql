--Найти отдел, заключивший контрактов на наибольшую сумму. 
--Вывести: department_name, sum
SELECT SUM(sumMax.amount), sumMax.department_name
FROM (
  SELECT department_name, amount
  FROM department, employees, executor, contract
  WHERE department.id = employees.department_id
  AND employees.id = executor.tab_no
  AND contract.id = executor.contract_id
) AS sumMax
GROUP BY sumMax.department_name
ORDER BY SUM DESC