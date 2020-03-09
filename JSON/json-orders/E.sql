SELECT 
	SUM (
		  CAST (
			 info -> 'items' ->> 'qty' AS INTEGER
		  )
	   ) AS "TOTAL"
FROM 
"030320".orders