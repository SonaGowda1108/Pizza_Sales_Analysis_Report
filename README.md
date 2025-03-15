# 🍕 Pizza_Sales_Analysis_Report


## 📌 Project Overview



Project Title: Pizza Sales Analysis

Level: Intermediate

Technologies Used: SQL (MySQL), Power BI, Excel

This project analyzes pizza sales data to extract valuable business insights, identify sales trends, and optimize decision-making. Using SQL, Power BI, and Excel, we explore key performance indicators (KPIs) such as total revenue, average order value, and best-selling pizzas.

---


## 🎯 Objectives



Analyze key business KPIs such as total revenue, order trends, and pizza sales distribution.

Use SQL to perform data extraction and transformation for deeper insights.

Leverage Power BI for visual analytics to enhance business intelligence.

Identify top-selling and low-performing products to optimize marketing strategies.


---

## 🗂️ Project Structure

1️⃣ Database & Data Cleaning

Dataset Used: Pizza Sales Data (pizza_sales.csv)

Data Cleaning: Handled missing values, standardized formats, and ensured data consistency.

```bash
     CREATE DATABASE pizza_db;

     USE pizza_db;

     CREATE TABLE pizza_sales 
    (
    	order_details_id  int,
    	order_id	int,
    	pizza_id	varchar(20),
    	quantity	int,
    	order_date	date,
    	order_time	time,
    	unit_price	float,
    	total_price	 float,
    	pizza_size	varchar(2),
    	pizza_category	varchar(20),
    	pizza_ingredients	varchar(100),
    	pizza_name  varchar(50)
    );
```

--- 

## 2️⃣ Key Insights & Findings



## 📊 Sales Performance Overview

Total Revenue: $818K

Average Order Value: $38.3

Total Pizzas Sold: 49.57K

Total Orders: 21.35K

Average Pizzas Per Order: 2.32

---

## 🔹 Sales Trends

Peak Sales Days: Fridays (3.5K pizzas), followed by Thursdays and Saturdays.

Highest Sales Months: July & August, with a decline in September & October.

Peak Order Times: Evening hours show the highest order volumes.

---


## 🍕 Category & Size Preferences

Most Sold Pizza Category: Classic (14.89K pizzas), followed by Supreme, Veggie, and Chicken.

Most Popular Pizza Size: Large (45.89%), followed by Medium (30.49%) and Regular (21.77%).


---

## 🏆 Top & Bottom Sellers

Top 5 Best-Selling Pizzas generate the highest revenue and order volumes.

Bottom 5 Pizzas have low demand, requiring marketing strategies or recipe modifications.

---

## 🔍 SQL Queries Used

Example Queries for Key Metrics

```bash
-- Total Revenue
SELECT SUM(total_price) AS total_revenue FROM pizza_sales;

-- Average Order Value
SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS avg_order_value FROM pizza_sales;

-- Total Pizzas Sold
SELECT SUM(quantity) AS total_pizza_sold FROM pizza_sales;

-- Top 5 Best-Selling Pizzas
SELECT pizza_name, SUM(total_price) AS total_revenue 
FROM pizza_sales 
GROUP BY pizza_name 
ORDER BY total_revenue DESC 
LIMIT 5;
```

--- 

## 📈 Power BI Dashboard



The Power BI dashboard includes the following visualizations:

✅ Hourly & Weekly Sales Trends (Stacked bar and line charts)

✅ Sales by Pizza Category & Size (Pie charts)

✅ Best & Worst-Selling Pizzas (Bar charts)

✅ Revenue and Order Volume Analysis

---

## 🚀 Conclusion & Business Recommendations

Seasonal & Weekly Sales Trends: Weekend and summer months see higher sales.

Customer Preferences: Large pizzas and classic flavors dominate sales.

--- 

## Growth Opportunities:

Promotions in low-demand months (September & October).

Special deals for less popular pizza categories.

Optimizing evening operations to maximize peak-hour sales.

By leveraging these insights, strategic marketing and operational decisions can be made to enhance overall pizza sales performance. 🍕📊

--- 

## 📎 How to Use

Clone the Repository:

git clone https://github.com/sonagowda1108/pizza-sales-analysis.git

Set Up the Database: Import the pizza_sales.csv file into MySQL.

Run SQL Queries: Use the SQL scripts provided to generate insights.

Explore Power BI Dashboard: Open the Power BI file to analyze visual reports.

---

## 👤 Author

Sona B

📌 www.linkedin.com/in/sonagowda1108

 
