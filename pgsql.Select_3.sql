--Найти самую часто встречающуюся локации среди всех заказчиков. 
--Вывести: location, count
SELECT MAX(loc_count)
FROM (
  SELECT location, COUNT(*) AS loc_count
  FROM contract, customer
  WHERE contract.customer_id = customer.id
  GROUP BY location
) AS FrequentLocation