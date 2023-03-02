SELECT 'SHIPPED' AS Ship_Status,
Order_Id, Order_Date
FROM Orders
WHERE Ship_Date IS NOT NULL
UNION
SELECT 'NOT SHIPPED', Order_ID, Order_Date
FROM Orders
WHERE Ship_Date IS NULL
ORDER BY Order_Date
