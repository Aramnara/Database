CREATE PROCEDURE test()
BEGIN
    DECLARE product_count INT DEFAULT 0;
    SELECT COUNT(*) INTO product_count FROM products;
    IF (product_count >= 7) THEN
        SELECT 'The number of products is greater than or equal to 7' AS result;
    ELSE
        SELECT 'The number of products is less than 7' AS result;
    END IF;
END;
