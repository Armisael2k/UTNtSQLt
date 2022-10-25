USE AdventureWorks2019
GO

--TODO: Cambia el valor de @BusinessEntityID para ejecutar el procedimiento almacenado.
DECLARE @BusinessEntityID INT = 0

EXEC Person.uspGetPersonByBusinessEntityID 
	@BusinessEntityID = @BusinessEntityID