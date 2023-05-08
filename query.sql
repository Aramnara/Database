SELECT order_id, COALESCE(ship_date, DATE_ADD(order_date, INTERVAL 2 DAY)) AS approx_ship_date,
       ship_date, DATEDIFF(ship_date, order_date) AS days_to_ship
FROM orders
WHERE order_date IS NOT NULL
ORDER BY order_id;
