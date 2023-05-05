CREATE VIEW order_item_products AS
SELECT
  products.product_name,
  COUNT(DISTINCT Orders.order_id) AS order_count,
  SUM(order_items.quantity * order_items.unit_price) AS order_total
FROM
  products
  INNER JOIN order_items ON products.product_id = order_items.product_id
  INNER JOIN orders ON order_items.order_id = orders.order_id
GROUP BY
  products.product_id;
