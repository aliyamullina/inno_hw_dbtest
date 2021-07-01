--Найти отдел, заключивший контрактов на наибольшую сумму. 
--Вывести: department_name, sum
SELECT department_name, sumAmount
FROM (
  SELECT department_name, SUM(amount) as sumAmount
  FROM department
  JOIN employees ON department.id = employees.department_id
  JOIN executor ON employees.id = executor.tab_no
  JOIN contract ON contract.id = executor.contract_id
  GROUP BY department_name
) as t_1
JOIN (
  SELECT MAX(sum) AS maxSumAmount
  FROM (
 	SELECT department_name, SUM(amount)
    FROM department
  	JOIN employees ON department.id = employees.department_id
  	JOIN executor ON employees.id = executor.tab_no
  	JOIN contract ON contract.id = executor.contract_id
  	GROUP BY department_name
  ) AS t_1_1
) AS t_2
ON t_1.sumAmount = t_2.maxSumAmount