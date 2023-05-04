SELECT 
    c.last_name, 
    c.first_name, 
    o.order_date, 
    p.product_name, 
    oi.list_price AS item_price, 
    ROUND(oi.list_price * oi.discount_percent / 100, 2) AS discount_amount, 
    oi.quantity 
FROM 
    customers c 
    JOIN orders o ON c.customer_id = o.customer_id 
    JOIN order_items oi ON o.order_id = oi.order_id 
    JOIN products p ON oi.product_id = p.product_id 
ORDER BY 
    c.last_name, 
    o.order_date, 
    p.product_name;
