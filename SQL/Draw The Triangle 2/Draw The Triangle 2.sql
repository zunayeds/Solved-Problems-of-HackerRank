DECLARE @cnt INT = 1,
@tmpCnt INT,
@str VARCHAR(MAX)

WHILE (@cnt <= 20)
BEGIN
    SET @tmpcnt = 1
    SET @str = ''
    WHILE (@tmpCnt <= @cnt)
    BEGIN
        SET @str = @str + (CASE WHEN @str <> '' THEN ' *' ELSE '*' END)
        SET @tmpCnt = @tmpCnt + 1
    END
    SELECT @str
    SET @cnt = @cnt + 1
END