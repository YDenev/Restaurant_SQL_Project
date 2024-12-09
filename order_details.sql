-- 1. View the order_details table. 

SELECT * FROM order_details;

-- 2. What is the date range of the table?

-- Using Min() and Max()

SELECT MIN(order_date) AS starting_date, 
MAX(order_date) AS last_date 
FROM order_details;

-- 3. How many orders were made within this data range?

SELECT COUNT(DISTINCT order_id) AS num_orders FROM order_details;

-- 4. How many items were ordered within this data range?

SELECT COUNT(*) AS num_ordered_items FROM order_details;

-- 5. What are the Top 10 orders by number of items?

SELECT order_id, COUNT(item_id) AS num_items FROM order_details
GROUP BY order_id
ORDER BY num_items DESC
LIMIT 10;

-- 6. How many orders had more than 12 items? 
-- using sub_query

SELECT COUNT(*) AS orders_count FROM
(SELECT order_id, COUNT(item_id) AS num_items FROM order_details
GROUP BY order_id
HAVING num_items > 12) AS num_orders;




