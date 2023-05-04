SELECT 
    card_number,
    LENGTH(card_number) AS card_number_length,
    RIGHT(card_number, 4) AS last_four_digits,
    IF(LENGTH(card_number) = 16,
       CONCAT('XXXX-XXXX-XXXX-', RIGHT(card_number, 4)),
       CONCAT('XXXX-XXXXXX-X', RIGHT(card_number, 4))) AS formatted_number
FROM 
    orders
ORDER BY 
    card_number ASC;
