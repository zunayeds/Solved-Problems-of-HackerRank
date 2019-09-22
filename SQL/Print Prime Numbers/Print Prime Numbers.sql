DECLARE @cnt INT = 2,
@it INT,
@it2 INT,
@range INT = 1000

DECLARE @tbl TABLE (
    Number INT,
    IsPrime BIT
)

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON

WHILE (@cnt <= @range)
BEGIN
    INSERT INTO @tbl VALUES (@cnt, 1)
    SET @cnt = @cnt + 1
END

SET @it = 2
WHILE (@it*@it <= @range) 
BEGIN
    IF ((SELECT IsPrime FROM @tbl WHERE Number = @it) = 1)
    BEGIN
        SET @it2 = @it*2
        WHILE (@it2 <= @range)
        BEGIN
            UPDATE @tbl SET IsPrime = 0 WHERE Number = @it2 
            SET @it2 = @it2 + @it
        END
    END 
    SET @it = @it + 1
END 

DECLARE @str VARCHAR(MAX)

SELECT @str = ISNULL(LTRIM(STUFF((SELECT '&' +  CONVERT(VARCHAR(20), Number)
FROM @tbl
WHERE IsPrime = 1
FOR XML path(''), type).value('.','varchar(max)'), 1, 1, '')), '')

PRINT @str