USE AdventureWorks2019
GO

DECLARE @BusinessEntityID INT = 0

--TODO: Cambia el valor de @BusinessEntityID para ejecutar el procedimiento almacenado.

EXEC Person.uspGetPersonByBusinessEntityID 
	@BusinessEntityID = BusinessEntityID