SELECT 
  c.category_name, 
  COUNT(p.product_id) AS product_count, 
  MAX(p.list_price) AS most_expensive_product 
FROM 
  categories c 
  JOIN products p ON c.category_id = p.category_id 
GROUP BY 
  c.category_name 
ORDER BY 
  COUNT(p.product_id) DESC;
