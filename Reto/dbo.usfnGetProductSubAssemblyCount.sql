USE AdventureWorks2019
GO

CREATE FUNCTION dbo.usfnGetProductSubAssemblyCount
(
	@StartProductID INT,
	@CheckDate DATETIME
)
RETURNS INT
AS
BEGIN
	RETURN (SELECT COUNT(DISTINCT(ComponentID)) 
			FROM Production.BillOfMaterials 
			WHERE ProductAssemblyID = @StartProductID
				 AND @CheckDate >= [StartDate] 
            AND @CheckDate <= ISNULL([EndDate], @CheckDate))
END