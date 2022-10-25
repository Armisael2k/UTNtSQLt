USE AdventureWorks2019
GO

CREATE PROCEDURE Person.uspDeleteEmailAddress
	@EmailAddressID INT
AS
BEGIN
	DELETE FROM Person.EmailAddress WHERE EmailAddressID = @EmailAddressID
END