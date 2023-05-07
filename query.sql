CREATE PROCEDURE test(OUT message VARCHAR(1000))
BEGIN
    DECLARE product_name VARCHAR(255);
    DECLARE list_price DECIMAL(10,2);
    DECLARE result_string VARCHAR(1000) DEFAULT '';
    DECLARE done INT DEFAULT FALSE;
    DECLARE product_cursor CURSOR FOR SELECT product_name, list_price FROM products WHERE list_price > 700 ORDER BY list_price DESC;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN product_cursor;
    read_loop: LOOP
        FETCH product_cursor INTO product_name, list_price;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SET result_string = CONCAT(result_string, '*', product_name, '*', ',', '*', FORMAT(list_price, 2), '*', '|');
    END LOOP;
    CLOSE product_cursor;
    SET message = result_string;
END;
