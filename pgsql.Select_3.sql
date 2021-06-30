--Найти самую часто встречающуюся локации среди всех заказчиков. 
--Вывести: location, count
--SELECT MAX(frequentLocation.count)
--FROM (
  SELECT location, COUNT(*)
  FROM contract, customer
  WHERE contract.customer_id = customer.id
  GROUP BY location
  ORDER BY count DESC
--) AS frequentLocation