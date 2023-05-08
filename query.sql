SELECT order_id, order_date, DATE_ADD(order_date, INTERVAL 2 DAY) AS approx_ship_date,
       ship_date, DATEDIFF(ship_date, order_date) AS days_to_ship
FROM orders
WHERE order_date >= '2018-03-01' AND order_date < '2018-04-01' AND ship_date IS NOT NULL
ORDER BY order_id ASC;
