SELECT 
Count(OrderID) AS Total_Orders,
SUM(TotalPrice) AS Total_Revenue,
AVG(TotalPrice) AS Average_Order_Value
FROM Dataset_for_Data_Analytics dfda 
WHERE OrderStatus = 'Delivered'
GROUP BY dfda.Product 
ORDER BY Total_Revenue DESC;