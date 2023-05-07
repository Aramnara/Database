CREATE PROCEDURE test()
BEGIN
    DECLARE lresult VARCHAR(100);
    
    SET lresult = '';

    INSERT INTO Categories (category_name) VALUES ('Guitars');
    
    IF ROW_COUNT() = 1 THEN
        SET lresult = '1 row was inserted.';
    ELSE
        SET lresult = 'Row was not inserted - duplicate entry.';
    END IF;
    
    SELECT lresult AS result;
END;
