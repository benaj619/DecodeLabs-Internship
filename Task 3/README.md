
# Task 3: Sales Performance & Data Aggregation (SQL)

## Overview
This task involves querying a relational database using SQLite in DBeaver to calculate sales metrics, fulfilled revenue, and category performance.

## Key Objectives
- Write structured `SELECT` queries utilizing `WHERE`, `GROUP BY`, and `ORDER BY` clauses.
- Perform core numerical aggregations (`COUNT`, `SUM`, `AVG`) to compute total volume and average order values.
- Segment sales by product category and fulfillment status (`Delivered`).

## Key Query Applied
```sql
SELECT 
    Product,
    COUNT(OrderID) AS Total_Orders,
    SUM(TotalPrice) AS Total_Revenue,
    AVG(TotalPrice) AS Average_Order_Value
FROM Dataset_for_Data_Analytics
WHERE OrderStatus = 'Delivered'
GROUP BY Product
ORDER BY Total_Revenue DESC;
