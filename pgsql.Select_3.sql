--Найти самую часто встречающуюся локации среди всех заказчиков. 
--Вывести: location, count
SELECT location, localCount as Count
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

