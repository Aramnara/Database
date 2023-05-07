DELIMITER //

CREATE PROCEDURE test()
BEGIN
  DECLARE factors VARCHAR(255);
  DECLARE i INT;
  
  SET factors = 'Common factors of 10 and 20: ';
  
  FOR i = 1 TO 10 DO
    IF (10 % i = 0 AND 20 % i = 0) THEN
      SET factors = CONCAT(factors, i, ' ');
    END IF;
  END FOR;
  
  SELECT factors AS result;
END//

DELIMITER ;

CALL test();
