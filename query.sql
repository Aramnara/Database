SELECT card_number,
       LENGTH(card_number) AS card_number_length,
       RIGHT(card_number, 4) AS last_four_digits,
       CONCAT(IF(LENGTH(card_number) = 16, CONCAT(REPEAT('X', 12), '-', RIGHT(card_number, 4)), CONCAT(REPEAT('X', 10), '-', RIGHT(card_number, 4)))), AS formatted_number
FROM orders
ORDER BY card_number ASC;
