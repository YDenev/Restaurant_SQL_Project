# Restaurant_SQL_Project
Data Analysis with MySQL

## Problem Statement

The goal of this data analysis project is to explore and analyze a dataset of restaurant orders and menu items using SQL. The dataset includes information about customer orders, menu items, order quantities, and prices, as well as timestamps of each transaction. The primary objective is to gain insights into customer ordering patterns, most popular dishes and categories, revenue generation, and order trends.

Key analysis questions include:
1. What are the least and most ordered menu items?
2. What are the most ordered menu categories?
3. What is the average dish price for each category?
4. Are there any patterns in customer ordering behavior based on category of ordered items?
5. What items are ordered most in the highest spend orders?


    By applying SQL queries for aggregations, filtering, and grouping, the project aims to provide actionable insights that can help optimize the restaurant's menu offerings, pricing strategy, and operational efficiency.

## Project Objectives
1. To explore the menu_items table to get an idea of what is on the menu.
2. To explore the order_details table to get an idea of the data that has been collected.
3. To use both tables to understand customers behavior and provide actionable insights, that can help improving the service. 

## Prerequisites
1. MySQL Workbench installed
2. SQL script file, containing the setup of the database with 2 tables and populating them with data

    I have used preset database as this project is focused on analysis rather than database management!

## Questions and Answers

### 1. View the menu_items and order_details tables.

![Q1](https://github.com/user-attachments/assets/c9a07b64-44f3-4da5-a729-884cda87d705)

### 2. Find the number or items in the menu.

![Q2](https://github.com/user-attachments/assets/b76c6c59-6b76-438c-8788-7b26e0523e74)

### 3. What are the 5 least and 5 most expensive items in the menu?

3.1 Least expensive items

![Q31](https://github.com/user-attachments/assets/68dfd209-8286-453c-bb6d-2e01eebdcf0a)

3.2 Most expensive items

![Q32](https://github.com/user-attachments/assets/a0653081-3d48-4062-a7b1-c9e8800b86f0)

### 4. How many Italian dishes are in the menu?

![Q4](https://github.com/user-attachments/assets/9c3aed44-da4a-4c24-b533-0700499dcde9)

### 5. What are the least and most expensive Italian dishes in the menu?

5.1 Least expensive Italian dish

![Q51](https://github.com/user-attachments/assets/862c75a8-af3b-4b41-ad72-d96879d33b98)

5.2 Most expensive Italian dish

![Q52](https://github.com/user-attachments/assets/65dfcb7d-043a-4f94-8eb1-a651aeb0b02e)

### 6. How many dishes are in each category?

![Q6](https://github.com/user-attachments/assets/66a501a3-ba9f-4edb-822b-a93fd84b326a)

### 7. What is the average dish price in each category?

![Q7](https://github.com/user-attachments/assets/1aaf3e02-91ca-458c-a351-c06b93379a19)

### 8. What is the date range of the orders table?

Using Min() and Max()

![Q81](https://github.com/user-attachments/assets/4e8a9ec9-89b5-4d36-bd87-78fa018014f7)

### 9. How many orders were made within this data range?

I am using COUNT DISTINCT with order_id, because it is not unique in my order_details table and I have a different PK.(Please see screenshot below Question 1)

![Q9](https://github.com/user-attachments/assets/e3be94b3-95a7-4bed-98e9-46a72b546920)

### 10. How many items were ordered within this data range?

![Q10](https://github.com/user-attachments/assets/99d6543c-96a9-4416-ab92-ba0475cc50f3)

### 11. What are the Top 10 orders by number of items?

![Q11](https://github.com/user-attachments/assets/05bc7194-891a-4292-8275-e547d63388ce)

### 12. How many orders had more than 12 items? 

To answer this question, I wrote a query to find the orders with more than 12 items and used it as sub-query to find the count.

![Q12](https://github.com/user-attachments/assets/13bd4c4b-d5c6-4fcb-a0cc-b6c9cda2695a)

### 13. Join the two tables.

As a common practice, I have started with the orders table and then used the Left join to add the data from the details(lookup) table.
Also for this project, I am interested in the orders so I need all values from the related table.

![Q13](https://github.com/user-attachments/assets/36f896cc-2fb4-4ef6-adf8-983b2ef43a34)

### 14. What were the 10 least and most ordered items, and what categories were they in?

14.1 Ten Least ordered items

![Q141](https://github.com/user-attachments/assets/7108cdcb-e96e-40cf-ab39-0771819bbd1b)

14.2 Ten Most ordered items

![Q142](https://github.com/user-attachments/assets/b75215e5-63be-46f5-967f-ea292856d792)

### 15. What were the top 5 orders that spend the most money?

![Q15](https://github.com/user-attachments/assets/d2d074ee-5926-481d-9017-b607b130efd8)

### 16. View the details of the highest spend order.

![Q16](https://github.com/user-attachments/assets/42ba2f45-0b7d-4b9f-b656-170c5c6c242e)

### 17. What is the category distrubution of the items in the highest spend order?

![Q17](https://github.com/user-attachments/assets/bba4dab7-c333-4034-b2c8-4dd836ea5acf)

### 18. View the details of the top 5 highest spend orders.

![Q18](https://github.com/user-attachments/assets/f1f7a759-5aff-49de-b73b-6eaf2c897b39)

## Insights gathered from the analysis

 - Mexican and Italiand food have the biggest variety of dishes in the menu with 9 each
 - Most of the cheapest dishes in the menu are American, however the Asian Edamame is the cheapest at price of $5.00
 - Most of the expensive dishes are Italian with Shrimp Scampi toping the chart at price of $19.95
 - Out of 5370 total orders, only 20 are with more than 12 dishes
 - The category of most of the least sold items is Mexican, with the least ordered item - Chiken Tacos
 - The most ordered items are mostly American and Asian, with American Hamburger and Asian Edamame numbering the most orders
 - The orders with the most money spend average around $190
 - The highest spend order is including 8 Italian dishes out of 14 in total, with 2 dishes each for the other 3 categories
