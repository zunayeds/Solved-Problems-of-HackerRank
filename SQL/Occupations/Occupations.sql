DECLARE
@max_cnt INT,
@cnt INT

DECLARE @tmp_tbl TABLE (
    row_num INT,
    Name VARCHAR(50),
    Occupation VARCHAR(50)
);

DECLARE @tbl TABLE (
    Doctor VARCHAR(50),
    Professor VARCHAR(50),
    Singer VARCHAR(50),
    Actor VARCHAR(50)
);

WITH cte AS
(
    SELECT ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) as row_num, Name, Occupation
    FROM Occupations
)
INSERT INTO @tmp_tbl
SELECT *
FROM cte

SELECT @max_cnt = MAX(row_num) FROM @tmp_tbl

SET @cnt = 1

WHILE (@cnt <= @max_cnt)
BEGIN
    INSERT INTO @tbl
    SELECT (SELECT Name FROM @tmp_tbl WHERE row_num = @cnt AND Occupation = 'Doctor'),
    (SELECT Name FROM @tmp_tbl WHERE row_num = @cnt AND Occupation = 'Professor'),
    (SELECT Name FROM @tmp_tbl WHERE row_num = @cnt AND Occupation = 'Singer'),
    (SELECT Name FROM @tmp_tbl WHERE row_num = @cnt AND Occupation = 'Actor')
    
    SET @cnt = @cnt + 1
END

SELECT * FROM @tbl