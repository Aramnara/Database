CREATE PROCEDURE test()
BEGIN
    DECLARE factors VARCHAR(255) DEFAULT '';
    DECLARE i INT DEFAULT 1;
    WHILE (i <= 10) DO
        IF (10 % i = 0 AND 20 % i = 0) THEN
            SET factors = CONCAT(factors, i, ' ');
        END IF;
        SET i = i + 1;
    END WHILE;
    SELECT CONCAT('Common factors of 10 and 20: ', factors) AS result;
END;
