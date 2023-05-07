DROP FUNCTION IF EXISTS discount_price;

DELIMITER //

CREATE FUNCTION discount_price
(
  item_id_param	INT(11)
)
RETURNS DECIMAL(10,2)
BEGIN
  DECLARE discount_price_var DECIMAL(10,2);
    
  SELECT item_price - discount_amount
  INTO   discount_price_var
  FROM   order_items
  WHERE  item_id = item_id_param;
    
  RETURN discount_price_var;
END//

DELIMITER ;

-- Check:
SELECT item_id, item_price, discount_amount, 
       discount_price(item_id) as discount_price
FROM order_items;
