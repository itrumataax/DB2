A.
CREATE TABLE "030320".orders (
   ID serial NOT NULL PRIMARY KEY,
   info json NOT NULL
);

INSERT INTO "030320".orders (info)
VALUES
   (
      '{ "customer": "Eldon Bayacag", "items": {"product": "Diaper","qty": 6}}'
   ),
   (
      '{ "customer": "Eldon Bayacag", "items": {"product": "Beer","qty": 9}}'
   ),
   (
      '{ "customer": "Julius Millena", "items": {"product": "Beer","qty": 6}}'
   ),
   (
      '{ "customer": "Brayl Labo", "items": {"product": "Beer","qty": 1}}'
   ),
   (
      '{ "customer": "Eldon Bayacag", "items": {"product": "Toy Car","qty": 1}}'
   ),
   (
      '{ "customer": "Eldon Bayacag", "items": {"product": "Toy Train","qty": 2}}'
   );

B. 
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

C.
SELECT 
   info ->> 'customer' AS "Customer Name"
FROM
   "030320".orders
   
ORDER BY 
CAST
(info -> 'items' ->> 'qty' as INTEGER)
ASC LIMIT 1;

D. 
SELECT 
   info ->> 'customer' AS "Customer Name"
FROM
   "030320".orders
   
ORDER BY 
CAST
(info -> 'items' ->> 'qty' as INTEGER)
DESC LIMIT 1;

E.
SELECT 
	SUM (
		  CAST (
			 info -> 'items' ->> 'qty' AS INTEGER
		  )
	   ) AS "TOTAL"
FROM 
"030320".orders


    
   
    