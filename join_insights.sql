-- 1. Join the two tables.   

SELECT * FROM order_details od
	LEFT JOIN menu_items mi
    ON od.item_id = mi.menu_item_id;

-- 2. What were the 10 least and most ordered items, and what categories were they in?

-- a) 10 Least ordered items

SELECT item_name, category, COUNT(*) AS orders_count FROM order_details od
	LEFT JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
ORDER BY orders_count
LIMIT 10;
    
-- b) 10 Most ordered Items

SELECT item_name, category, COUNT(*) AS orders_count FROM order_details od
	LEFT JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
ORDER BY orders_count DESC
LIMIT 10;

-- 3. What were the top 5 orders that spend the most money?

SELECT order_id, SUM(price) AS money_spend FROM order_details od
	LEFT JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY money_spend DESC
LIMIT 5;

-- 4. View the details of the highest spend order. 

SELECT order_id, order_date, item_id, item_name, category, price 
FROM order_details od
	LEFT JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
WHERE order_id = 440;

-- 5. What is the category distrubution of the items in the highest spend order?

SELECT category, COUNT(*) AS num_items FROM order_details od
	LEFT JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
WHERE order_id = 440
GROUP BY category;

-- 6. View the details of the top 5 highest spend orders. 

SELECT order_id, category, COUNT(*) AS num_items FROM order_details od
	LEFT JOIN menu_items mi
    ON od.item_id = mi.menu_item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY order_id, category;