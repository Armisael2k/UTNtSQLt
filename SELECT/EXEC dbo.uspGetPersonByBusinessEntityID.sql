USE AdventureWorks2019
GO

--TODO: Cambia el valor de @BusinessEntityID para ejecutar el procedimiento almacenado.
DECLARE @BusinessEntityID INT = 0

EXEC dbo.uspGetPersonByBusinessEntityID 
	@BusinessEntityID = @BusinessEntityID