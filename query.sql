SELECT 
  c.email_address, 
  SUM(oi.list_price * oi.quantity) AS item_price_total, 
  SUM((oi.list_price * oi.discount_percent / 100) * oi.quantity) AS discount_amount_total 
FROM 
  customers c 
  JOIN orders o ON c.customer_id = o.customer_id 
  JOIN order_items oi ON o.order_id = oi.order_id 
GROUP BY 
  c.email_address 
ORDER BY 
  item_price_total DESC;
