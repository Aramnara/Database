SELECT 
    list_price,
    FORMAT(list_price, 1) AS price_format,
    CONVERT(list_price, INTEGER) AS price_convert,
    CAST(list_price AS INTEGER) AS price_cast
FROM 
    Products
ORDER BY 
    list_price ASC;
