CREATE VIEW product_summary AS
SELECT p.product_name, 
       COUNT(DISTINCT oi.order_id) AS order_count, 
       SUM(oi.quantity * oi.item_price * (1 - oi.discount_percent)) AS order_total
FROM products p
JOIN Order_Items oi ON p.product_id = oi.product_id
JOIN Orders o ON oi.order_id = o.order_id
GROUP BY p.product_id
ORDER BY order_total DESC;
