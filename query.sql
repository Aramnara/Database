SELECT c.email_address, COUNT(DISTINCT o.order_id) AS order_count, 
SUM((oi.item_price - oi.discount_amount) * oi.quantity) AS order_total
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id AND oi.item_price > 400
GROUP BY c.email_address
HAVING COUNT(DISTINCT o.order_id) > 1
ORDER BY order_total DESC;
