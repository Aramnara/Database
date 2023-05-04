SELECT 
    c.email_address AS EmailAddress, 
    COUNT(o.order_id) AS OrderCount,
    SUM((oi.item_price - oi.discount_amount) * oi.quantity) AS OrderTotal
FROM 
    customers c 
    JOIN orders o ON c.customer_id = o.customer_id 
    JOIN order_items oi ON o.order_id = oi.order_id 
GROUP BY 
    EmailAddress
HAVING 
    COUNT(o.order_id) > 1 
ORDER BY 
    OrderTotal DESC;
