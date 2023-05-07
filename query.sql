CREATE PROCEDURE test()
BEGIN
    DECLARE result VARCHAR(255);
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
        SET result = 'Row was not inserted - duplicate entry.';
    INSERT INTO Categories (category_name)
    VALUES ('Guitars');
    SET result = '1 row was inserted.';
    SELECT result AS result;
END;
