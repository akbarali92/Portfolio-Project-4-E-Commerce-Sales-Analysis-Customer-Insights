CREATE DATABASE IF NOT exists ecommerce_sales_project;
USE ecommerce_sales_project;

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    product_category VARCHAR(50),
    payment_method VARCHAR(50),
    order_amount INT,
    discount INT,
    city VARCHAR(50),
    order_date DATE
);

SELECT * FROM orders;


SELECT COUNT(*) FROM orders; 

SELECT SUM(order_amount) FROM orders;

SELECT AVG(order_amount) FROM orders;

SELECT product_category, SUM(order_amount)
FROM orders
GROUP BY product_category;

SELECT city, COUNT(*) AS total_orders
FROM orders
GROUP BY city;


SELECT payment_method, SUM(order_amount)
FROM orders
GROUP BY payment_method;

SELECT MONTH(order_date) AS month,
       SUM(order_amount) AS revenue
FROM orders
GROUP BY MONTH(order_date);

SELECT discount, AVG(order_amount)
FROM orders
GROUP BY discount;

