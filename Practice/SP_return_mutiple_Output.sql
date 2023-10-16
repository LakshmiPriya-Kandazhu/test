CREATE PROCEDURE GetEmployeeData
AS
BEGIN
    SELECT 
	     EmployeeID,
		 FirstName,
		 LastName
	FROM EmployeeTable
END

DECLARE @Results TABLE(
      EmployeeID INT,
	  FirstName NVARCHAR(50),
	  LastName NVARCHAR(50)
	  )

INSERT INTO @Results
EXEC GetEmployeeData

select * from @Results
