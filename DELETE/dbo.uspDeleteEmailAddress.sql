USE AdventureWorks2019
GO

CREATE PROCEDURE dbo.uspDeleteEmailAddress
	@EmailAddressID INT
AS
BEGIN
	DELETE FROM Person.EmailAddress WHERE EmailAddressID = @EmailAddressID
END