--Найти контракты одинаковой стоимости. 
--Вывести count, amount
SELECT COUNT(equalCost.amount), equalCost.amount
FROM (
  SELECT id, amount
  FROM contract
) AS equalCost
GROUP BY equalCost.amount
HAVING equalCost.count > 1
ORDER BY equalCost.count DESC, equalCost.amount DESC