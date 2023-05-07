CREATE PROCEDURE test()
BEGIN
    DECLARE product_name VARCHAR(255);
    DECLARE list_price DECIMAL(10,2);
    DECLARE result VARCHAR(255) DEFAULT '';
    
    DECLARE cur CURSOR FOR
        SELECT product_name, list_price
        FROM products
        WHERE list_price > 700
        ORDER BY list_price DESC;
    
    OPEN cur;
    
    FETCH cur INTO product_name, list_price;
    IF (product_name IS NOT NULL AND list_price IS NOT NULL) THEN
        SET result = CONCAT('*', product_name, '*', ',', '*', list_price, '*', '|');
    END IF;
    
    WHILE (product_name IS NOT NULL AND list_price IS NOT NULL) DO
        FETCH cur INTO product_name, list_price;
        IF (product_name IS NOT NULL AND list_price IS NOT NULL) THEN
            SET result = CONCAT(result, '*', product_name, '*', ',', '*', list_price, '*', '|');
        END IF;
    END WHILE;
    
    CLOSE cur;
    
    IF (result = '') THEN
        SET result = 'No products found';
    END IF;
    
    SELECT result AS result;
END;
