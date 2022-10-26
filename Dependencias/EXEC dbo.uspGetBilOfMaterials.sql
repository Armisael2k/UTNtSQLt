USE AdventureWorks2019
GO

DECLARE @StartProductID INT = 3,
		@CheckDate DATETIME = '2010-09-15'

EXEC dbo.uspGetBillOfMaterials 
	@StartProductID = @StartProductID, 
	@CheckDate = @CheckDate