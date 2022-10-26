USE AdventureWorks2019
GO

--TODO: Cambia el valor de las variables @BusinessEntityID & @EmailAddress para ejecutar el procedimiento almcenado
DECLARE @EmailAddressID INT = 0,
		@BusinessEntityID INT = 0,
		@EmailAddress VARCHAR(50) = ''

EXEC Person.uspInsertPersonEmailAddress 
		@BusinessEntityID = @BusinessEntityID, 
		@EmailAddress = @EmailAddress, 
		@EmailAddressID = @EmailAddressID OUTPUT

SELECT @EmailAddressID