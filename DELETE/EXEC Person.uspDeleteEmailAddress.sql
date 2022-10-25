USE AdventureWorks2019
GO

--TODO: Cambia el valor de @EmailAddressID para ejecutar el procedimiento almacenado
DECLARE @EmailAddressID INT = 0

EXEC Person.uspDeleteEmailAddress @EmailAddressID = @EmailAddressID