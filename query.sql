SELECT 
    order_id AS 'The order id',
    order_date AS 'The order date',
    ship_date AS 'The ship date'
FROM
    orders
WHERE
    ship_date IS NULL;
