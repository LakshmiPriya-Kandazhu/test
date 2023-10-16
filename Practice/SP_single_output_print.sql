CREATE PROCEDURE GetTotalEmployees
   @TotalEmployees INT OUTPUT
AS      
BEGIN
   SELECT @TotalEmployees = count(*) FROM EmployeeTable
END


DECLARE @EmployeeCount INT;

EXEC GetTotalEmployees @TotalEmployees = @EmployeeCount OUTPUT;

PRINT 'Total Employees: '+ CAST(@EmployeeCount as NVARCHAR(10));