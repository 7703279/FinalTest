CREATE PROCEDURE [dbo].[ADD_CUSTOMER]
	@CustNo int,
	@CustName nvarchar(50),
	@CustAddress nvarchar(50),
	@CustPcode int,
	@InterestCode nvarchar(50)
AS
	BEGIN
		INSERT INTO Customer(CustNo, CustName, CustAddress, CustPcode, InterestCode) VALUES (@CustNo, @CustName, @CustAddress, @CustPcode, @InterestCode);
	END
GO;
