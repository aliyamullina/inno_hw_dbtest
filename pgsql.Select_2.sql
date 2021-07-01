--Найти среднюю стоимость контрактов, заключенных сотрудником Ivan Ivanov.
--Вывести: среднее значение amount
SELECT avg(amount) AS amount
FROM employees
  JOIN executor ON employees.id = executor.tab_no
  JOIN contract ON executor.contract_id = contract.id
WHERE employees.name = 'Ivan Ivanov'