-- select * from retail_shop;

-- 🏷️ Sales & Revenue Analysis
-- 1.	What is the total revenue generated from all orders?

	SELECT 
    ROUND(SUM(sales), 2) AS total_revenue
FROM
    retail_shop;
 
-- 2.	Which product category has the highest total profit?
    
    SELECT 
    Category, ROUND(SUM(Profit), 2) AS total_profit_category
FROM
    retail_shop
GROUP BY Category
ORDER BY Category;
    
-- 3.	List the top 5 customers by total sales.
 SELECT 
    CustomerName, SUM(Sales) AS top5
FROM
    retail_shop
GROUP BY CustomerName
ORDER BY top5 DESC
LIMIT 5;
    
-- 4.	Calculate the average discount given across all orders.
     SELECT 
    OrderID, AVG(Discount)
FROM
    retail_shop
GROUP BY OrderID;
     
-- 5.	Which region generated the highest sales amount?

    SELECT 
    Region, ROUND(SUM(Sales), 3) AS highest_sales_reg
FROM
    retail_shop
GROUP BY Region
ORDER BY highest_sales_reg DESC
LIMIT 1;

