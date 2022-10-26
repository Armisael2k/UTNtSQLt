USE AdventureWorks2019
GO

--Query del SP modificado para obtener ProductSubCategoryID
SELECT PC.[Name] ProductCategory,
		PC.ProductCategoryID,
		PSC.[Name] ProductSubCategory,
		P.ProductSubcategoryID,
		dbo.usfnGetCountOfProductsBySubCategory(P.ProductSubcategoryID) CountOfProducts
FROM Production.ProductSubcategory PSC
	INNER JOIN Production.ProductCategory PC ON PC.ProductCategoryID = PSC.ProductCategoryID
	INNER JOIN Production.Product P ON P.ProductSubcategoryID = PSC.ProductSubcategoryID
WHERE PC.ProductCategoryID = 2
GROUP BY PC.[Name],
		PSC.[Name],
		PSC.ProductSubcategoryID,
		PC.ProductCategoryID,
		P.ProductSubcategoryID


--ProductCategory
SELECT ProductCategoryID, 
[Name]
FROM Production.ProductCategory

--ProductSubCategoryID
SELECT ProductSubcategoryID, 
	ProductCategoryID, 
	[Name] 
FROM Production.ProductSubcategory
WHERE ProductSubCategoryID IN (5, 6, 7)

--Product
SELECT ProductID, [Name], ProductNumber, ProductSubCategoryID
FROM Production.Product
WHERE ProductSubcategoryID	IN (5, 6, 7, 8, 9, 10, 4, 11, 12, 13, 14, 15, 16, 17)