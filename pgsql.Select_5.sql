--Найти заказчика с наименьшей средней стоимостью контрактов. 
--Вывести customer_name, среднее значение amount
SELECT AVG(avgMin.amount), avgMin.customer_name
FROM (
  SELECT customer_name, amount
  FROM contract, customer
  WHERE customer.id = contract.customer_id
) AS avgMin
GROUP BY avgMin.customer_name
ORDER BY AVG