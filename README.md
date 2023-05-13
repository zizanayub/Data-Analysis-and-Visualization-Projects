# Sales-Insights-and-Dashboard_Power-BI


**Part-5: Build Dashboard** 

***29. Verify through SQL: 
SELECT sum(transactions.sales_amount)
FROM sales.transactions
INNER JOIN sales.date
ON transactions.order_date = date.date 
Where date.year = 2020 and date.month_name = "January"
AND (transactions.currency = 'INR\r' OR transactions.currency = "USD\r"); 

*** The answer matches exactly with Power BI results
