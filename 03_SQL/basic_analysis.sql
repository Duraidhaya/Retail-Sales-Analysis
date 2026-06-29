CREATE DATABASE retail_sales_db;
USE retail_sales_db;
show tables;
SELECT * FROM sales_data LIMIT 10;
-- Query 1 : Total Records
SELECT COUNT(*) AS total_records FROM sales_data;
-- Query 2 : Total Sales
SELECT SUM(Sales) AS total_sales FROM sales_data;
-- Query 3 : Total Profit
SELECT SUM(Profit) AS total_profit FROM sales_data;
-- Query 4 : Average Sales
SELECT AVG(Sales) AS average_sales FROM sales_data;
-- Query 5 : Category Wise Sales
SELECT Category, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Category
ORDER BY Total_Sales DESC;
-- Query 6 : Region Wise Profit
SELECT Region,
       SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Region
ORDER BY Total_Profit DESC;
-- Query 7:States by Sales
SELECT State,
       SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;
-- Query 8: Sub-Category Wise Profit
SELECT `Sub-Category`,
       SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY `Sub-Category`
ORDER BY Total_Profit DESC;
-- Query 9: Ship Mode Wise Profit
SELECT `Ship Mode`,
       SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY `Ship Mode`
ORDER BY Total_Profit DESC;
-- Query 10: Orders with Sales Greater Than 1000
SELECT * FROM sales_data WHERE Sales > 1000;
-- Query 11: Loss Making Orders
SELECT * FROM sales_data WHERE Profit < 0;
-- Query 12: -- California Sales
SELECT * FROM sales_data WHERE State = 'California';
-- Query 13: Technology Category Orders
SELECT * FROM sales_data WHERE Category = 'Technology';
-- Query 14:-- Top 5 Most Profitable Orders
SELECT * FROM sales_data ORDER BY Profit DESC LIMIT 5;
-- Query 15: Biggest Loss Orders
SELECT * FROM sales_data ORDER BY Profit ASC LIMIT 5;
-- Query 16: Average Sales by Category
SELECT Category, ROUND(AVG(Sales),2) AS Average_Sales FROM sales_data
GROUP BY Category
ORDER BY Average_Sales DESC;
-- Query17: Regions Having Profit Greater Than 10000
SELECT Region, SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Region
HAVING SUM(Profit) > 10000;
-- Query 18: Customers by Sales
SELECT City,
SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;
-- Query 19: Average Profit by Region
SELECT Region, ROUND(AVG(Profit),2) AS Avg_Profit
FROM sales_data
GROUP BY Region;
-- Query 20: Total Quantity Sold by Category
SELECT Category, SUM(Quantity) AS Total_Quantity
FROM sales_data
GROUP BY Category
ORDER BY Total_Quantity DESC;