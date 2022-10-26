USE AdventureWorks2019
GO

CREATE FUNCTION dbo.usfnGetCountOfProductsBySubCategory
(
	@ProductSubCategoryID INT
)
RETURNS INT
AS
BEGIN
	RETURN (SELECT COUNT(ProductSubcategoryID) FROM Production.Product WHERE ProductSubcategoryID = @ProductSubCategoryID)
END
GO

CREATE PROCEDURE dbo.uspGetProductCategorySubCategories
	@ProductCategoryID INT
AS
BEGIN
	SELECT PC.[Name] ProductCategory, 
		PSC.[Name] ProductSubCategory,
		dbo.usfnGetCountOfProductsBySubCategory(P.ProductSubcategoryID) CountOfProducts
FROM Production.ProductSubcategory PSC
	INNER JOIN Production.ProductCategory PC ON PC.ProductCategoryID = PSC.ProductCategoryID
	INNER JOIN Production.Product P ON P.ProductSubcategoryID = PSC.ProductSubcategoryID
WHERE PC.ProductCategoryID = @ProductCategoryID
GROUP BY PC.[Name],
		PSC.[Name],
		P.ProductSubcategoryID
END