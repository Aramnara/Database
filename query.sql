SELECT c.email_address, o.order_id AS oldest_order_id, o.order_date AS oldest_order_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_date = (SELECT MIN(order_date) FROM orders WHERE customer_id = c.customer_id)
ORDER BY oldest_order_date, oldest_order_id;
