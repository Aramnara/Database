CREATE PROCEDURE test()
BEGIN
    DECLARE product_name VARCHAR(255);
    DECLARE list_price DECIMAL(10,2);
    DECLARE result VARCHAR(5000) DEFAULT '';
    
    DECLARE product_cursor CURSOR FOR
        SELECT product_name, list_price
        FROM Products
        WHERE list_price > 700
        ORDER BY list_price DESC;
        
    OPEN product_cursor;
    
    FETCH product_cursor INTO product_name, list_price;
    WHILE (FOUND_ROWS() > 0) DO
        SET result = CONCAT(result, '*', product_name, '*', ',', '*', FORMAT(list_price, 2), '*', '|');
        FETCH product_cursor INTO product_name, list_price;
    END WHILE;
    
    CLOSE product_cursor;
    
    SELECT result AS result;
END;

CALL test();
