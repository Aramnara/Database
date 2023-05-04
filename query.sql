use my_guitar_shop;
CREATE OR REPLACE VIEW order_item_products AS
    SELECT 
        o.order_id,
        order_date,
        tax_amount,
        ship_date,
        item_price,
        discount_amount,
    FROM
        orders o
            JOIN
        order_items oi ON o.order_id = oi.order_id
            JOIN
        products p ON oi.product_id = p.product_id;
