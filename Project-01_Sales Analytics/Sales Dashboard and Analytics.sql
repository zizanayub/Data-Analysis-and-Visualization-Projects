-- 01. Count all transactions
select count(*)
From sales.transactions; 


-- 02. Count all the customers
select count(*)
From sales.customers; 


-- 03. Select top 5 transactions
select *
From sales.transactions 
limit 5;


-- 04. How many transactions did happen in Chennai?
select count(*)
from sales.transactions
where market_code = "Mark001"; 



-- Verification 01
SELECT sum(transactions.sales_amount)
FROM sales.transactions
INNER JOIN sales.date
ON transactions.order_date = date.date 
Where date.year = 2020 and date.month_name = "January"
AND (transactions.currency = 'INR\r' OR transactions.currency = "USD\r"); 



-- Verification 02
-- Check total revenue for Chennai in 2020
Select SUM(transactions.sales_amount)
FROM sales.transactions
INNER JOIN sales.date
ON transactions.order_date = date.date
where date.year = 2020 AND transactions.market_code = "MARK001";