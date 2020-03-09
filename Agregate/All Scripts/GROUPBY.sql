SELECT department_id"Department ID",
COUNT(*) "Employee Count"
FROM "Bayacag_HR".employees
GROUP BY department_id
ORDER BY department_id ASC;