drop database if exists sqlproject;
create database sqlproject;
use sqlproject;

show tables;
select * from olist_order_items_dataset;

-- Total Orders
select Count( distinct(order_id) ) order_item_id 
from olist_order_items_dataset;

-- Total Revenues
Select SUM(price) AS Total_Revenues
From olist_order_items_dataset;

-- Average product price
Select Avg (price) as Average 
From olist_order_items_dataset;

-- Top 5 sabse mehenga products
Select price 
From olist_order_items_dataset
Order By price DESC
LIMIT 5;

-- Top 10 sellers in terms of revenue
Select seller_id 
From olist_order_items_dataset
Group by seller_id
Order by price DESC
LIMIT 10;

-- Total shipping cost kitna pada?
Select SUM(freight_value) AS Total_shipping_cost
from olist_order_items_dataset;