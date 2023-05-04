use my_guitar_shop;
CREATE VIEW order_item_products AS
SELECT
    o.order_id,
    o.order_date,
    o.tax_amount,
    o.ship_date,
    oi.order_item_id,
    oi.order_id AS oi_order_id,
    oi.product_id,
    oi.quantity,
    oi.list_price,
    p.product_id AS p_product_id,
    p.product_name,
    p.description,
    p.category_id,
    p.image_file_name,
    p.active
FROM
    orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON oi.product_id = p.product_id;
