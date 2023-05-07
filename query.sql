DROP PROCEDURE IF EXISTS test;

DELIMITER //

CREATE PROCEDURE test()
BEGIN
  DECLARE i              INT DEFAULT 1;
  DECLARE number_1_var   INT DEFAULT 10;
  DECLARE number_2_var   INT DEFAULT 20;
  DECLARE message_var    VARCHAR(400);
  
  SET message_var = CONCAT('Common factors of ', number_1_var, ' and ',number_2_var,':');
  WHILE ((i <= number_1_var) AND (i < number_2_var))  DO
    
    IF ((number_1_var % i = 0) AND (number_2_var % i = 0)) THEN
      SET message_var = CONCAT(message_var," ", i);
      END IF;
    
    SET i = i + 1;
  END WHILE;
  
  SELECT message_var AS message;

END//

DELIMITER ;

CALL test();
