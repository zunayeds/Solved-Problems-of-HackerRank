SELECT CAST (SUM(LAT_N) AS DECIMAL(10,4))
FROM STATION
WHERE LAT_N >= 38.7880 AND LAT_N <= 137.2345