DROP PROCEDURE IF EXISTS test;

DELIMITER //
create procedure test()
BEGIN
DECLARE count_of_7 DECIMAL(10,2);

select count(product_id) 
into count_of_7
from products;
IF count_of_7 >= 7 THEN
	SELECT 'The number of products is greater than or equal to 7' AS message;
ELSE
	SELECT 'The number of products is less than 7' AS message;
end if;
end//

call test();
