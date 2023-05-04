SELECT 
    list_price,
    FORMAT(list_price, 1) AS price_format,
    CONVERT(list_price, SIGNED) AS price_convert,
    CAST(list_price AS SIGNED) AS price_cast
FROM 
    products
ORDER BY 
    list_price ASC;
