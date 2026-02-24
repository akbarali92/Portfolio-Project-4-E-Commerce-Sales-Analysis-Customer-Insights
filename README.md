Portfolio-Project-4-E-Commerce-Sales-Analysis-Customer-Insights
This project analyzes e-commerce sales data to understand customer purchasing behavior, product performance, revenue trends, and the impact of discounts on sales.
🛒 E-Commerce Sales Analysis & Customer Insights

📌 Project Overview

This project analyzes e-commerce sales data to understand customer purchasing behavior, product performance, revenue trends, and the impact of discounts on sales.

The objective is to help businesses improve sales strategies, optimize marketing campaigns, and increase revenue using data-driven insights.

🎯 Problem Statement

E-commerce companies need to answer important business questions such as:

* Which product categories generate the most revenue?
* Which cities contribute the highest sales?
* How do discounts affect customer purchases?
* What are the monthly sales trends?
* Which customers spend the most?

This project provides analytical insights to support better business decision-making.

📂 Dataset Information

The dataset contains order-level information including:

* Order ID
* Customer ID
* Product Category
* Payment Method
* Order Amount
* Discount
* City
* Order Date

🛠️ Tools & Technologies Used

 **Excel** → Initial data viewing and validation
**Python** → Data cleaning and analysis

  * Pandas
  * NumPy
  * Matplotlib
* **MySQL** → Data querying and aggregation
* **Power BI** → Interactive dashboard and visualization

🔎 Project Workflow

Step 1 — Data Cleaning (Python)

* Loaded dataset using Pandas
* Checked missing values
* Verified data types
* Converted order date column to datetime format
* Created net revenue column (order amount − discount)

Example:

```python
df['order_date'] = pd.to_datetime(df['order_date'])
df['net_revenue'] = df['order_amount'] - df['discount']
```

Step 2 — Exploratory Data Analysis

Performed analysis to understand:

* Total orders and revenue
* Sales by product category
* Revenue by city
* Payment method distribution
* Monthly sales trends
* Discount impact on sales

 Step 3 — SQL Analysis

Used MySQL queries to analyze sales performance.

 Total Orders

```sql
SELECT COUNT(*) FROM orders;
```
 Total Revenue

```sql
SELECT SUM(order_amount) FROM orders;
```
 Sales by Category

```sql
SELECT product_category, SUM(order_amount)
FROM orders
GROUP BY product_category;
```
Revenue by City

```sql
SELECT city, SUM(order_amount)
FROM orders
GROUP BY city;
```

 Monthly Sales Trend

```sql
SELECT MONTH(order_date), SUM(order_amount)
FROM orders
GROUP BY MONTH(order_date);
```


Step 4 — Power BI Dashboard

Created an interactive dashboard including:

KPI Cards

* Total Orders
* Total Revenue
* Average Order Value
* Total Customers

 Visualizations

* Sales by Product Category (Bar Chart)
* Revenue by City (Column Chart)
* Monthly Sales Trend (Line Chart)
* Order Amount vs Discount (Scatter Plot)
* Payment Method Distribution (Pie Chart)

📈 Key Insights

* Certain product categories contribute significantly higher revenue.
* Some cities generate more sales than others.
* Discounts influence customer purchasing behavior.
* Monthly sales trends reveal seasonal patterns.
* High-value customers contribute a large portion of revenue.

💡 Business Recommendations

* Focus marketing campaigns on high-performing product categories.
* Offer targeted discounts to increase customer spending.
* Invest more in high-revenue cities.
* Provide loyalty programs for high-value customers.
* Optimize payment methods for customer convenience.

✅ Conclusion

This project demonstrates how e-commerce data analysis can help businesses:

* Improve revenue strategies
* Understand customer behavior
* Optimize marketing efforts
* Support data-driven decision-making

Using analytics helps companies increase profitability and customer satisfaction.

🚀 How to Run This Project

1. Download dataset
2. Run Python analysis notebook
3. Execute SQL queries in MySQL
4. Open Power BI dashboard file

 📷 Dashboard Preview

(Add your Power BI dashboard screenshot here)

Example:

```
![Dashboard](images/dashboard.png)
```

👨‍💻 Author

Akbar Ali
Aspiring Data Analyst
