SELECT c.email_address, 
       COUNT(DISTINCT o.order_id) AS order_count, 
       SUM((oi.item_price - oi.discount_amount) * oi.quantity) AS order_total
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
JOIN order_items AS oi ON o.order_id = oi.order_id
WHERE c.customer_id IN (
  SELECT customer_id
  FROM orders
  GROUP BY customer_id
  HAVING COUNT(*) > 1
)
AND oi.item_price > 400
GROUP BY c.email_address
ORDER BY order_total DESC;
