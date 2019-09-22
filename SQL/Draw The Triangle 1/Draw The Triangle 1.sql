DECLARE @cnt INT = 20,
@tmpCnt INT,
@str VARCHAR(MAX)

WHILE (@cnt > 0)
BEGIN
    SET @tmpCnt = @cnt
    SET @str = ''
    WHILE (@tmpCnt > 0)
    BEGIN
        SET @str = @str + (CASE WHEN @str <> '' THEN ' *' ELSE '*' END)
        SET @tmpCnt = @tmpCnt - 1
    END
    SELECT @str
    SET @cnt = @cnt - 1
END