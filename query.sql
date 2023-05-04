SELECT product_id, product_name, list_price, discount_percent,
       ROUND(list_price * discount_percent / 100, 2) AS discount_amount
FROM products
WHERE discount_percent IN (
  SELECT DISTINCT discount_percent
  FROM products
  GROUP BY discount_percent
  HAVING COUNT(*) = 1
)
ORDER BY product_name ASC;
