SELECT 
   info ->> 'customer' AS customer
FROM
   "030320".orders
WHERE
   info -> 'items' ->> 'product' = 'Beer'
   
INTERSECT

SELECT 
   info ->> 'customer' AS customer
FROM
   "030320".orders
WHERE
   info -> 'items' ->> 'product' = 'Diaper'