create database pizza_db;
use pizza_db;
create table pizza_sales 
(
	order_details_id  int,
	order_id	int,
	pizza_id	varchar(20),
	quantity	int,
	order_date	date,
	order_time	time,
	unit_price	float,
	total_price	float,
	pizza_size	varchar(2),
	pizza_category	varchar(20),
	pizza_ingredients	varchar(100),
	pizza_name  varchar(50)
);
select * from pizza_sales;

-- 1.	Total Revenue: 
SELECT 
    SUM(total_price) as total_revenue 
FROM pizza_sales;

-- 2. Average Order Value:
SELECT 
	SUM(total_price) / COUNT(DISTINCT order_id) AS avg_order_value 
FROM pizza_sales;

-- 3.Total Pizza Sold
SELECT 
	SUM(quantity) as total_pizza_sold 
FROM pizza_sales;

-- 4.Total Orders
SELECT 
	COUNT(DISTINCT order_id) AS total_order 
FROM pizza_sales;

-- 5.	Average Pizzas Per Order
SELECT ROUND(SUM(quantity) / COUNT(DISTINCT order_id), 2) AS avg_pizza_per_order FROM pizza_sales; 

-- daily trend for total orders
''' SELECT DATENAME(MONTH,order_date)  as order_day ,
       COUNT(DISTINCT order_id) as total_orders
FROM pizza_sales
WHERE order_date IS NOT NULL
GROUP BY DATENAME(DW,order_date) , MONTH(order_date)
ORDER BY total_orders;'''


-- Monthly Trends For Total Orders
SELECT DATENAME(MONTH, order_date) AS order_month, 
       COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales 
GROUP BY DATENAME(MONTH, order_date), MONTH(order_date)
ORDER BY MONTH(order_date); 

-- Percentage Of Sales By Pizza Category
SELECT pizza_category ,
 	   ROUND(SUM(total_price),2) as total_revenue,
	   ROUND(SUM(total_price)*100/ (SELECT SUM(total_price) FROM pizza_sales),2) as PCT
FROM pizza_sales
GROUP BY pizza_category;

-- Percentage Of Sales By Pizza Size
SELECT pizza_size,
ROUND(SUM(total_price),2) as total_revneue,
ROUND(SUM(total_price)*100/(SELECT SUM(total_price) FROM pizza_sales),2) as PCT 
FROM pizza_sales
GROUP BY pizza_size
order by pizza_size;

--Total Pizzas Sold by Pizza Category


-- Top Five Pizza by Revenue
SELECT TOP 5 pizza_name,
SUM(total_price) as total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue DESC;

-- Bottom Five Pizza by Revenue
SELECT TOP 5 pizza_name,
SUM(total_price) as total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue ;


--  Top 5 Pizzas by Total Orders
SELECT  TOP 5 pizza_name, 
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC;

--  Bottom 5 Pizzas by Total Orders
SELECT TOP 5 pizza_name, 
    COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ;


-- Top 5 Pizzas by Qunatity
SELECT TOP 5 pizza_name, 
   SUM(quantity) AS Total_pizza_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_pizza_sold DESC ;


-- Bottom 5 Pizzas by Qunatity
SELECT TOP 5 pizza_name, 
   SUM(quantity) AS Total_pizza_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_pizza_sold  ;



