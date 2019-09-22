DECLARE
@day_cnt INT,
@day DATE,
@min_date DATE,
@hack_cnt INT,
@hacker_id INT

DECLARE cur CURSOR FOR SELECT DISTINCT submission_date FROM Submissions ORDER BY submission_date

DECLARE @hackers TABLE (
    hacker_id INT
)

DECLARE @final TABLE (
    sub_date DATE,
    hack_cnt INT,
    hacker_id INT NULL,
    name VARCHAR(50) NULL
)

SELECT @min_date = MIN(submission_date) FROM Submissions

OPEN cur
FETCH NEXT FROM cur INTO @day

WHILE @@FETCH_STATUS = 0  
BEGIN
    SELECT @day_cnt = DATEDIFF(DAY, @min_date, @day) + 1
    
    DELETE FROM @hackers
    
    INSERT INTO @hackers
    SELECT hacker_id
    FROM Submissions
    WHERE submission_date BETWEEN @min_date AND @day
    GROUP BY hacker_id
    HAVING COUNT(DISTINCT submission_date) = @day_cnt
    
    SELECT TOP 1 @hacker_id = hacker_id
    FROM Submissions
    WHERE submission_date = @day
    GROUP BY hacker_id
    ORDER BY COUNT(submission_id) DESC, hacker_id
    
    INSERT INTO @final
    SELECT @day, (SELECT COUNT(*) FROM @hackers), @hacker_id, name
    FROM Hackers
    WHERE hacker_id = @hacker_id
    
    FETCH NEXT FROM cur INTO @day
END

CLOSE cur
DEALLOCATE cur

SELECT *
FROM @final
ORDER BY sub_date