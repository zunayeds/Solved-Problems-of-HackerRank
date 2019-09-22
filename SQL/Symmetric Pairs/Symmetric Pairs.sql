DECLARE
@X INT,
@Y INT,
@ID INT

DECLARE @tbl TABLE (
    ID INT,
    X INT,
    Y INT,
    IsPair BIT
);

WITH cte AS
(
    SELECT ROW_NUMBER() OVER (ORDER BY X) AS rowNum, X, Y
    FROM Functions
)
INSERT INTO @tbl
SELECT rowNum, X, Y, 0 AS IsPair
FROM cte

DECLARE
@cnt INT = 1,
@row_cnt INT = (SELECT COUNT(*) FROM @tbl)

WHILE (@cnt <= @row_cnt)
BEGIN
    SET @ID = NULL
    SELECT @X = X, @Y = Y
    FROM @tbl
    WHERE ID = @cnt
    
    SELECT TOP 1 @ID = ISNULL(ID, 0)
    FROM @tbl
    WHERE X = @Y AND Y = @X AND ID > @cnt
    
    IF (@ID IS NOT NULL AND @ID > 0)
    BEGIN
        UPDATE @tbl
        SET IsPair = 1
        WHERE ID = @cnt
    END
    
    SET @cnt = @cnt + 1
END

SELECT X, Y
FROM @tbl
WHERE IsPair = 1
ORDER BY X, Y