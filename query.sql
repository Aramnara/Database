SELECT 
    c.email_address, 
    COALESCE(COUNT(o.order_id), 0) AS order_count,
    COALESCE(SUM(oi.item_price * oi.quantity), 0) AS order_total
FROM 
    customers c 
    LEFT JOIN orders o ON c.customer_id = o.customer_id 
    LEFT JOIN order_items oi ON o.order_id = oi.order_id 
GROUP BY 
    c.email_address 
HAVING 
    COUNT(o.order_id) > 1 
ORDER BY 
    order_total DESC;
