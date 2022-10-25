USE AdventureWorks2019
GO

--TODO: Cambia los valores de las variables para ejecutar el procedimiento almacenado
DECLARE @BusinessEntityID INT = 0,
	@Title VARCHAR(50) = '',
	@FirstName VARCHAR(50) = '',
	@MiddleName VARCHAR(50) = '',
	@LastName VARCHAR(50) = ''


--Ver los valores anteriores
SELECT * FROM Person.Person WHERE BusinessEntityID = @BusinessEntityID


--Ejecutar el SP
EXEC Person.uspUpdatePerson 
	@BusinessEntityID = @BusinessEntityID,  
	@Title = @Title, 
	@FirstName = @FirstName, 
	@MiddleName = @MiddleName, 
	@LastName = @LastName

--Comprobar el cambio
SELECT * FROM Person.Person WHERE BusinessEntityID = @BusinessEntityID