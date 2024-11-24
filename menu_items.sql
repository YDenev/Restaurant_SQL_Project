-- 1. View the menu_items table.

SELECT * FROM menu_items;

-- 2. Find the number or items in the menu.

SELECT COUNT(*) AS num_items FROM menu_items; 

-- 3. What are the 5 least and 5 most expensive items in the menu?

-- a) Least expensive item
SELECT * FROM menu_items
ORDER BY price
LIMIT 5;

-- b) Most expensive item

SELECT * FROM menu_items
ORDER BY price DESC
LIMIT 5;

-- 4. How many Italian dishes are in the menu?

SELECT COUNT(*) AS num_italian_dishes FROM menu_items
WHERE category = 'Italian';

-- 5. What are the least and most expensive Italian dishes in the menu?

-- a) Least expensive Italian dish

SELECT * FROM menu_items
WHERE category = 'Italian'
ORDER BY price
LIMIT 1;

-- b) Most expensive Italian dish

SELECT * FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC
LIMIT 1;

-- 6. How many dishes are in each category?

SELECT category, COUNT(*) AS num_dishes FROM menu_items
GROUP BY category;

-- 7. What is the average dish price in each category?

SELECT category, AVG(price) AS avg_dish_price FROM menu_items
GROUP BY category;
