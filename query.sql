SELECT c.email_address, oi.order_id, SUM((oi.item_price - oi.discount_amount) * oi.quantity) AS order_total
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.email_address, oi.order_id;

SELECT email_address, MAX(order_total) AS max_order_total, MIN(order_id) AS min_order_id
FROM (
  SELECT c.email_address, oi.order_id, SUM((oi.item_price - oi.discount_amount) * oi.quantity) AS order_total
  FROM customers c
  JOIN orders o ON c.customer_id = o.customer_id
  JOIN order_items oi ON o.order_id = oi.order_id
  GROUP BY c.email_address, oi.order_id
) AS subquery
GROUP BY email_address
ORDER BY max_order_total DESC;
