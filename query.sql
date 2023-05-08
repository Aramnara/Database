CREATE VIEW product_summary AS
SELECT p.product_id, p.product_name, COUNT(DISTINCT oi.order_id) AS order_count,
SUM(oi.item_total) AS order_total
FROM products AS p
JOIN order_items AS oi ON oi.product_id = p.product_id
GROUP BY p.product_id, p.product_name;
