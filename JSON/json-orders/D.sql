SELECT 
   info ->> 'customer' AS "Customer Name"
FROM
   "030320".orders
   
ORDER BY 
CAST
(info -> 'items' ->> 'qty' as INTEGER)
DESC LIMIT 1;