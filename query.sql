use my_guitar_shop;
CREATE order_item_products AS
    SELECT 
        o.order_id,
        o.order_date,
        o.tax_amount,
        o.ship_date,
        o.item_price,
        o.discount_amount,
    FROM
        orders o
            JOIN
        order_items oi ON o.order_id = oi.order_id
            JOIN
        products p ON oi.product_id = p.product_id;
