CREATE FUNCTION discount_price(p_item_id INT)
RETURNS DECIMAL(10,2)
BEGIN
    DECLARE discount DECIMAL(10,2);
    DECLARE item_price DECIMAL(10,2);
    SELECT discount_amount, price INTO discount, item_price FROM order_items WHERE item_id = p_item_id;
    RETURN (item_price - discount);
END;
