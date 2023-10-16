-- Create a new stored procedure
USE [kwetb]
GO

CREATE TABLE EmployeeTable(
       EmployeeID INT PRIMARY key,
	   FirstName NVARCHAR(50),
	   LastName NVARCHAR(50)
	   )

CREATE PROCEDURE InsertEmployee
    @EmployeeID INT,
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50)
AS
BEGIN
    -- Insert the employee information into a table
    INSERT INTO EmployeeTable (EmployeeID, FirstName, LastName)
    VALUES (@EmployeeID, @FirstName, @LastName);
END;


-- Execute the stored procedure with values for the parameters
EXEC InsertEmployee @EmployeeID = 2, @FirstName = 'Priya', @LastName = 'Subramanian';

select * from EmployeeTable