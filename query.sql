SELECT 
    c.email_address AS email_address, 
    SUM(oi.item_price * oi.quantity) AS item_price_total,
    SUM(oi.discount_amount * oi.quantity) AS discount_amount_total
FROM 
    customers c 
    JOIN orders o ON c.customer_id = o.customer_id 
    JOIN order_items oi ON o.order_id = oi.order_id 
GROUP BY 
    c.email_address 
ORDER BY 
    item_price_total DESC;
