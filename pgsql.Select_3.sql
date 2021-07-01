--Найти самую часто встречающуюся локации среди всех заказчиков. 
--Вывести: location, count
--SELECT max(maxLocation.count), location
--FROM (
  SELECT location, COUNT(*) as myCount
  FROM customer
  GROUP BY location
--) AS maxLocation

select referee, OnlyMyCount
  from (
         select referee, count(1) as OnlyMyCount
           from matches
          group by referee
       ) v_1
  join (
         select max(OnlyMyCount) as max_OnlyMyCount
           from (
                  select referee, count(1) as OnlyMyCount
                    from matches
                   group by referee
                ) v_0
       ) v_2
    on v_1.OnlyMyCount = v_2.max_OnlyMyCount