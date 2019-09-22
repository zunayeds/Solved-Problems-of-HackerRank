DECLARE
@max_tot BIGINT,
@cnt INT

SELECT @max_tot = MAX(salary*months)
FROM Employee

SELECT @cnt = COUNT(employee_id)
FROM Employee
WHERE salary*months = @max_tot

PRINT CONCAT(@max_tot, ' ', @cnt)