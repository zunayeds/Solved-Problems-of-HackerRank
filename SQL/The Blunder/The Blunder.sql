SELECT CEILING((AVG(CAST (salary AS DECIMAL(10,2))) - AVG(CONVERT(DECIMAL(10,2), REPLACE(CAST(salary AS VARCHAR(MAX)), '0', '')))))
FROM EMPLOYEES