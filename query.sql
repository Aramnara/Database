SELECT 
    order_date, 
    DATE_FORMAT(order_date, '%Y') AS order_year, 
    DATE_FORMAT(order_date, '%b-%d-%Y') AS order_date_formatted, 
    DATE_FORMAT(order_date, '%l:%i %p') AS order_time, 
    DATE_FORMAT(order_date, '%m/%d/%y %H:%i') AS order_datetime 
FROM 
    Orders 
ORDER BY 
    order_date ASC;
