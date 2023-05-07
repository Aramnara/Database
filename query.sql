DROP PROCEDURE IF EXISTS test;

DELIMITER //

CREATE PROCEDURE test ()

BEGIN

DECLARE counter INT;

DECLARE num1 INT;

DECLARE num2 INT;

DECLARE factors varchar (100);

SET num1 = 10;

SET num2 = 20;

SET counter = 1;

SET factors = 'Factors of 10 and 20: '; //declare num1 and num2 for 10 and 20 then factor for string concatination

WHILE( counter <= 20/2) //always check 20/2 is 10 and counter is 1 so 1 is < than 10 true till condition false like counter will increase from 1 ,2,3,4,5 till 10

do

IF ( num1 % counter = 0 AND num2 % counter = 0) THEN

//if 10%1=0 true and 20 %1 =0 true then factor will have value concat( 'Factors of 10 and 20: ',1,’’) so on

Bt 10%3 Is not equal to zero and 20%3 is also not equal to 0 so condition false ended if then counter increment by 1 .. and so on checking.. till all value satisfied //

SET factors = CONCAT (factors, counter, ' ');

END IF;

SET counter = counter + 1;

END WHILE;

SELECT factors;

END

call test()
