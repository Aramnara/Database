CREATE PROCEDURE test(OUT message VARCHAR(255))
BEGIN
    DECLARE product_count INT DEFAULT 0;
    SELECT COUNT(*) INTO product_count FROM products;
    IF (product_count >= 7) THEN
        SET message = 'The number of products is greater than or equal to 7';
    ELSE
        SET message = 'The number of products is less than 7';
    END IF;
END;
