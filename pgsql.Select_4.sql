--Найти контракты одинаковой стоимости. 
--Вывести count, amount
SELECT COUNT(amount), amount
FROM (
  SELECT id, amount
  FROM contract
) AS T
GROUP BY amount
ORDER BY count, amount