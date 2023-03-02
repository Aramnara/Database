SELECT 
    'SHIPPED' AS 'Ship Status',
    order_id AS 'The order id',
    order_date
FROM
    orders
WHERE
    ship_date IS NOT NULL 
UNION SELECT 
    'NOT SHIPPED' AS 'Ship Status',
    order_id AS 'The order id',
    order_date
FROM
    orders
WHERE
    ship_date IS NULL
ORDER BY order_date;
