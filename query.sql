CREATE PROCEDURE test
AS
BEGIN
  DECLARE @product_count INT
  SELECT @product_count = COUNT(*) FROM Products

  IF @product_count >= 7
    SELECT 'The number of products is greater than or equal to 7' AS result
  ELSE
    SELECT 'The number of products is less than 7' AS result
END
