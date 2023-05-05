CREATE VIEW order_item_products AS
SELECT o.order_id, o.order_date, o.tax_amount, o.ship_date, p.product_name,
       oi.item_price, oi.discount_amount, (oi.item_price - oi.discount_amount) AS final_price,
       oi.quantity, (oi.item_price - oi.discount_amount) * oi.quantity AS item_total
FROM orders AS o
JOIN order_items AS oi ON o.order_id = oi.order_id
JOIN products AS p ON oi.product_id = p.product_id;
