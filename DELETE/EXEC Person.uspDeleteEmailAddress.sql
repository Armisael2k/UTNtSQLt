USE AdventureWorks2019
GO

--TODO: Cambia el valor de @EmailAddressID para ejecutar el procedimiento almacenado
DECLARE @EmailAddressID INT = 0


--Ver los valores anteriores
SELECT * FROM Person.EmailAddress WHERE EmailAddressID = @EmailAddressID

--Ejecutar el SP
EXEC Person.uspDeleteEmailAddress @EmailAddressID = @EmailAddressID

--Comprobar que el registro ya no existe
SELECT * FROM Person.EmailAddress WHERE EmailAddressID = @EmailAddressID