DECLARE @cnt INT

SELECT @cnt = COUNT(*) FROM STATION

;WITH cte AS
(
    SELECT
        LAT_N,
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS RowNum
    FROM STATION
)
SELECT CAST(LAT_N AS DECIMAL(10,4))
FROM cte
WHERE (@cnt%2 = 0 AND RowNum = @cnt / 2) OR (@cnt%2 = 1 AND RowNum = (@cnt / 2) + 1)