-- use sqlproject;
-- show tables;
select * from olist_customers_dataset;

-- 1. I want to count all of the entry
Select Count( * )
From olist_customers_dataset;

-- 2. i want to know each state consist how many customer
Select customer_state , Count(*) AS TOTAL_IN_STATE
From olist_customers_dataset 
Group By customer_state 
Order By TOTAL_IN_STATE DESC;

-- 3. Top 10 cities with most customers
Select customer_city , Count(*) AS TOTAL_IN_CITY
From olist_customers_dataset
Group By customer_city
Order By TOTAL_IN_CITY DESC
LIMIT 10 ;

-- 4 . Unique Cities Count 
Select Count(distinct customer_city) as Total_city
From olist_customers_dataset;