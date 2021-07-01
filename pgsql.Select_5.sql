--Найти заказчика с наименьшей средней стоимостью контрактов. 
--Вывести customer_name, среднее значение amount
SELECT customer_name, avgAmount AS amount
FROM (
  SELECT customer_name, AVG(amount) AS avgAmount
  FROM contract
  JOIN customer ON customer.id = contract.customer_id
  GROUP BY customer_name
) AS t_1
JOIN (
  SELECT MIN(avg) AS minAvgAmount
  FROM (
      SELECT customer_name, AVG(amount)
      FROM contract
      JOIN customer ON customer.id = contract.customer_id
      GROUP BY customer_name
  ) AS t_1_1
) AS t_2
ON t_1.avgAmount = t_2.minAvgAmount