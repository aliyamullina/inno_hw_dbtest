--Найти заказчика с наименьшей средней стоимостью контрактов. 
--Вывести customer_name, среднее значение amount
--SELECT avgMin.customer_name, AVG(avgMin.amount) as amount
--FROM (
  SELECT customer_name, AVG(amount)
  FROM contract
  JOIN customer ON customer.id = contract.customer_id
  GROUP BY customer_name
--) AS avgMin
--GROUP BY avgMin.customer_name
--ORDER BY amount

/*SELECT location, localCount as Count
FROM (
  	SELECT location, COUNT(*) as localCount
 	FROM customer
  	GROUP BY location
) as t_1
JOIN (
  SELECT MAX(localCount) AS localMax
  FROM (
    SELECT location, COUNT(*) as localCount
  	FROM customer
  	GROUP BY location
  ) AS t_1_1
) AS t_2
ON t_1.localCount = t_2.localMax
*/
