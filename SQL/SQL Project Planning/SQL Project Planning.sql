DECLARE
@date1 DATE,
@date2 DATE,
@tmpDate DATETIME

DECLARE cur CURSOR FOR SELECT Start_Date, End_Date FROM Projects ORDER BY Start_Date

DECLARE @tbl TABLE(
    Date1 DATE,
    Date2 DATE
)

OPEN cur
FETCH NEXT FROM cur INTO @date1, @date2

WHILE @@FETCH_STATUS = 0  
BEGIN
    IF EXISTS (SELECT * FROM @tbl)
    BEGIN
        SELECT TOP 1 @tmpDate = Date2
        FROM @tbl
        ORDER BY Date2 DESC
        
        IF (@Date1 = @tmpDate)
        BEGIN
            UPDATE @tbl
            SET Date2 = @Date2
            WHERE Date2 = @tmpDate
        END
        ELSE
        BEGIN
            INSERT INTO @tbl
            SELECT @date1, @date2
        END
    END
    
    ELSE
    BEGIN
        INSERT INTO @tbl
        SELECT @date1, @date2
    END
    
    FETCH NEXT FROM cur INTO @date1, @date2
END 

CLOSE cur
DEALLOCATE cur

SELECT *
FROM @tbl
ORDER BY DATEDIFF(DAY, Date1, Date2), Date1