CREATE PROCEDURE test(OUT msg VARCHAR(255))
BEGIN
    DECLARE product_name VARCHAR(255);
    DECLARE list_price DECIMAL(10,2);
    DECLARE result VARCHAR(255) DEFAULT '';
    DECLARE done INT DEFAULT 0;

    DECLARE cur CURSOR FOR
    SELECT product_name, list_price
    FROM products
    WHERE list_price > 700
    ORDER BY list_price DESC;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO product_name, list_price;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SET result = CONCAT(result, '*', product_name, '*', ',','*', list_price, '*', '|');
    END LOOP;

    CLOSE cur;

    SET msg = result;
END;
