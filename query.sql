SELECT CONCAT(last_name, ', ', first_name) AS full_name
  FROM customers
 WHERE LEFT(last_name, 1) BETWEEN 'M' and 'Z'
 ORDER BY last_name;
