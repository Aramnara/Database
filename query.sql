CREATE PROCEDURE test()
BEGIN
    DECLARE lresult VARCHAR(50);
    BEGIN
        DECLARE EXIT HANDLER FOR 1062
        SET lresult = 'Row was not inserted - duplicate entry.';
        
        INSERT INTO categories (category_name) VALUES ('Guitars');
        
        SET lresult = '1 row was inserted.';
    END;
    
    SELECT lresult AS result;
END;
