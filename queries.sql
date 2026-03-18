
CREATE DATABASE sales_dashboard;

USE sales_dashboard;


SELECT * FROM sales;

SELECT 
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales;


SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;


SELECT `product name`, SUM(sales) AS revenue
FROM sales
GROUP BY `product name`
ORDER BY revenue DESC
LIMIT 10;

DROP TABLE sales;

SELECT * FROM sales;

SELECT 
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales;

DESC sales;


SELECT 
    YEAR(`order date`) AS year,
    MONTH(`order date`) AS month,
    SUM(sales) AS monthly_sales
FROM sales
GROUP BY 
    YEAR(`order date`),
    MONTH(`order date`)
ORDER BY 
    YEAR(`order date`),
    MONTH(`order date`);
    
    SELECT DISTINCT 
    YEAR(`order date`) AS year,
    MONTH(`order date`) AS month
FROM sales;

ALTER TABLE sales
MODIFY `order date` DATE;