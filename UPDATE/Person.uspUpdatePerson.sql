USE AdventureWorks2019
GO

CREATE PROCEDURE Person.uspUpdatePerson
	@BusinessEntityID INT,
	@Title VARCHAR(50),
	@FirstName VARCHAR(50),
	@MiddleName VARCHAR(50),
	@LastName VARCHAR(50)
AS
BEGIN
	UPDATE Person.Person 
	SET [Title] = @Title,
		FirstName = @FirstName,
		MiddleName = @MiddleName,
		LastName = @LastName
	WHERE BusinessEntityID = @BusinessEntityID

END