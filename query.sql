SELECT 
    c.email_address,
    COUNT(o.order_id) AS count,
    SUM(o.item_price - o.discount_amount) * COUNT(o.order_id) AS total_amount
FROM
    customers AS c
        INNER JOIN
    orders AS ord ON c.customer_id = ord.customer_id
        INNER JOIN
    order_items AS o ON o.order_id = ord.order_id 
where o.item_price>400
GROUP BY c.customer_id
HAVING count > 1
ORDER BY total_amount DESC;
