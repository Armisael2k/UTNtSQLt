USE AdventureWorks2019
GO

CREATE PROCEDURE Person.uspInsertPersonEmailAddress
	@BusinessEntityID INT,
	@EmailAddress VARCHAR(50),
	@EmailAddressID INT OUTPUT
AS
BEGIN
	IF @EmailAddress NOT LIKE '%[A-Z0-9][@][A-Z0-9]%[.][A-Z0-9]%'
		RAISERROR(N'El formato del correo electrónico es inválido.', 11, 1, N'442', 5)
	ELSE
		BEGIN
			IF NOT EXISTS (SELECT * FROM Person.BusinessEntity WHERE BusinessEntityID = @BusinessEntityID)
				RAISERROR(N'No existe recurso en Person.BusinessEntity con el BusinessEntityID proporcionado.', 11, 1, N'404', 5)
			ELSE
				BEGIN
					IF EXISTS (SELECT * FROM Person.EmailAddress WHERE BusinessEntityID = @BusinessEntityID AND EmailAddress = @EmailAddress)
						RAISERROR(N'Correo Electrónico duplicado para BusinessEntityID porporcionado', 11, 1, N'404', 5)
					ELSE
						BEGIN
							INSERT INTO Person.EmailAddress (BusinessEntityID, EmailAddress, rowguid, ModifiedDate) VALUES
							(@BusinessEntityID, @EmailAddress, NEWID(), GETDATE())
							SET @EmailAddressID = SCOPE_IDENTITY()
						END
				END
		END
END