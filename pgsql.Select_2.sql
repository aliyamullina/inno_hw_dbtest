--Найти среднюю стоимость контрактов, заключенных сотрудником Ivan Ivanov.
--Вывести: среднее значение amount
SELECT avg(amount) as avg_amount
FROM (
  SELECT *
  FROM employees, executor, contract
  WHERE employees.employee_name = 'Ivan Ivanov'
  AND employees.id = executor.tab_no
  AND executor.contract_id = contract.id
) ContractAmount