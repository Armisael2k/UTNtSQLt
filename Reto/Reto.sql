USE AdventureWorks2019
GO

DECLARE @StartProductID INT = 3,
		@CheckDate DATETIME = '2010-09-15'

EXEC dbo.uspGetBillOfMaterials 
	@StartProductID = @StartProductID, 
	@CheckDate = @CheckDate


/*
											REGLAS DEL RETO
1. Crear una clase de pruebas unitarias para el procedimiento almacenado uspGetBillOfMaterials (usar el helper es opcional).
2. Hacer fake de las tablas Production.Product y Production.BillOfMaterials con la información necesaria para el ProductID = 3
3. El caso de prueba debe llamarse [test GetBillOfMaterials_SpecificProduct_ReturnsData]
4. La prueba (Act) debe ser ejecutada con mis mismos argumentos del ejemplo de arriba.
5. La prueba se considera aprobada si los datos esperados son iguales a los datos obtenidos (Pista: usar tSQLt.AssertEqualsTable)
6. La prueba debe aprobar al momento de ejecutar la sentencia tSQLt.RunAll
*/