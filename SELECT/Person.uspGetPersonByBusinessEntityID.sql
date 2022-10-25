USE AdventureWorks2019
GO

CREATE PROCEDURE Person.uspGetPersonByBusinessEntityID
@BusinessEntityID INT
AS
BEGIN
	SELECT BE.BusinessEntityID, 
			P.PersonType, 
			P.Title, 
			P.MiddleName, 
			P.LastName
	FROM Person.BusinessEntity BE
		INNER JOIN Person.Person P ON P.BusinessEntityID = BE.BusinessEntityID
	WHERE BE.BusinessEntityID = @BusinessEntityID
END