SELECT 
  c.email_address, 
  SUM(oi.list_price * oi.quantity) AS item_price_total 
FROM 
  Customers c 
  JOIN Orders o ON c.customer_id = o.customer_id 
  JOIN Order_Items oi ON o.order_id = oi.order_id 
GROUP BY 
  c.email_address;
