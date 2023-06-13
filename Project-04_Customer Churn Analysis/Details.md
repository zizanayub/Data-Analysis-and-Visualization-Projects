# 01. Data Preparation (Cleaning, Formatting and Reshaping the Data)



## ▶️ 01 (Identifying the Headers)
Go to Home and Select "Use First Row As Headers". At the rightmost panel, the applied steps will be seen and updated whenever we need. 




## ▶️ 02 (Removing Estimated Salary)
The 'Estimated Salary' column need to be removed as there is another similar column named 'Balance'. The 'Applied Steps' can be renamed. He we can rename this specific step as 'Removed Estimated Salary'. 




## ▶️ 03 (Standardized Column Name)
Rename the column names and make it standardized (Example: 'customer_id' to 'Customer ID')




## ▶️ 04 (Changing the Data Type)
Customer ID = Whole number.

Credit Score = Whole number.

Country = Text.

Gender = Text.

Age = Whole number.

Tenure = Whole number.

Currency = Fixed decimal number.

Rest of the others = Whole number. 




## ▶️ 10 (Age Groups-Custom Column)
Make a new column of age groups with the customized column. Use 'If-else' to define the value ranges.




## ▶️ 11 (Credit Scores-Conditional Column)
Do the same as the previous step. Group the credit scores by using 'If-else' and defining the value ranges with a difference of 10. 




## 💡 12 (Decision of grouping the column values)
1. When the distribution of the data is too much, it is needed to group the data to distribute the data in a systematic and decorated manner.


2. If there are huge 'Distinct Values', it is a must to group the column values to ease the visualization process.


3. For this reason, we didn't group the 'Tenure' column. But, we tend to group the 'Balance' column. There are 650 distinct values in this column. Among them, 649 are unique. The minimum is 0 and the maximum is 210000+.





## ▶️ 13 (Account Balance-Conditional Column)

![image](https://github.com/zizanayub/Data-Analytics-Projects/assets/65456659/50ab6821-66b5-42b2-af9b-c6a6483bfc79)


Group the 'Account Balance' according to the figure. 




## ▶️ 14 (Changing Data Types)
Change the data types of the conditional columns (Age Groups, Credit Scores, Account Balance) to Text. 






# 02. Data Modelling (Create Queries to Model Your Data)

## ▶️ 01 (Extracting Age Group Column and Removing Duplicate Columns)

1. Go to the "Queries" panel > Reference.

2. Rename the current table to "Age Groups"

3. Keep "Age Groups" column and remove the rest of all.

4. Go to 'Home' > Remove Rows > Remove Duplicates.

5. ![image](https://github.com/zizanayub/Data-Analytics-Projects/assets/65456659/46f1fa73-debf-4d4a-bab2-6be23aa7acb7)









## ❓ 02 (Why We Did the first step)

1. When we saw the age groups, we were unable to sort them. '<20' was less than '40-50'. But it was going under them.

2. Additionally, the data types of the columns are in the 'Text' data types. So, they are not sortable.

3. To reduce the hassle of sorting and obstacles during visualizations, we've done this first step of extracting this specific 'Age Groups Column'. Through this step, we will be able to sort the groups with the "Age Group ID".






## ▶️ 03 (Conditional Column- Age Group ID)

![image](https://github.com/zizanayub/Data-Analytics-Projects/assets/65456659/75c18f8e-06fa-4977-b66c-a6da91422d5b)



Applied the 'Conditional Column' to the 'Age Groups' Column and define the Age Group ID. Apply "Sort Ascending" when the conditional column is done. 






## ▶️ 04 (Conditional Column- Account Balance ID)

Repeat the same process for Account Balance Groups.

![image](https://github.com/zizanayub/Data-Analytics-Projects/assets/65456659/37715419-8cc0-478e-a5ab-c8d12a718c04)








## ▶️ 05 (Conditional Column- Credit Scores)

![image](https://github.com/zizanayub/Data-Analytics-Projects/assets/65456659/2391f18d-3a8a-4f94-961a-d4e7ea029033)


Repeat the same process for the conditional Column for Credit Score Groups. There will be 6 columns. At last, apply the "Sort Ascending" for the 6 groups. 

![image](https://github.com/zizanayub/Data-Analytics-Projects/assets/65456659/f0122793-5eb6-4554-9a0b-049f3bf7a219)







## ▶️ 06 (Changing the Data Types to the Whole Number)
Change the data types of IDs of each group to Whole Number. 




Finally, Go home and Click "Close and Apply". 







## ▶️ 07 (Model View)

![image](https://github.com/zizanayub/Data-Analytics-Projects/assets/65456659/d5f40a89-e904-407f-80f3-6e32b65f7a8b)

1. "Age Groups" and "Customer Data" Tables are connected through the columns "Age Groups".

2. "Account Balance Groups" and "Customer Data" Tables are connected through the columns "Account Balance".

3. "Credit Score Groups" and "Customer Data" Tables are connected through the columns "Credit Scores"

4. The connections built here are pre-connected.






# 03. Data Analysis (Creating Measures Using DAX)

## ▶️ 01 (Calculating Number of Customers)

1. ```DAX
   No of Customers = COUNT('Customer Data'[Customer ID])
   ```

   This will count the number of customers following the `Customer ID` column.


2. There will be a new column and a calculator icon near the column name.

3. To check if everything in the process is OK, we can drop a card visualization.

![image](https://github.com/zizanayub/Data-Analytics-Projects/assets/65456659/9401fd25-3309-4dfd-8cdd-be22539fff78)




## ▶️ 02 (Calculating the Number of Customers Lost)


1. Use CALCULATE formula.
```DAX
Customers Lost = CALCULATE(COUNT('Customer Data'[Churn Status]), 'Customer Data'[Churn Status] = "Churned")
```

2. Check again with the card visualization.
![image](https://github.com/zizanayub/Data-Analytics-Projects/assets/65456659/60d529ac-6e32-4dff-8c8e-657d8ea12559)




## ▶️ 03 (Calculating the Churn Rate)

1. ```DAX
   Churn Rate = 'Customer Data'[Customers Lost] / 'Customer Data'[No of Customers]
   ```

2. Change the data type to Percentage and decimal place to 1.

3. Again check with the card visualization. 





# 04. Data Visualization (Creating Visualizations and Generating Insights)

## ▶️ 01 (Visualizing the Male and Female Percentage)

![image](https://github.com/zizanayub/Data-Analytics-Projects/assets/65456659/81c50c02-daa9-4aca-be0f-91951c2c57bb)

- Legend = Gender
- Values = No of Customers



## ▶️ 02 (Visualizing Another 4 Dount Charts)

![image](https://github.com/zizanayub/Data-Analytics-Projects/assets/65456659/bf929821-452e-4f93-8088-bfbf869cdca2)


## ▶️ 03 (Number of Customers and Churn Rate by Age Groups)

![image](https://github.com/zizanayub/Data-Analytics-Projects/assets/65456659/f51c0ea1-bbb9-4f0e-a81b-6989fd5bc9a9)



## 💡 04 (Sorting the Age Groups)

1. At first, you will not see the `Age Groups` column sorted. To sort the age groups, first go to the "Age Groups" table we created.

2. Select Age Groups > Column Tools > Sort by Column > Age Groups.

3. Go to visualization, select 'sort axis' as "Age Groups" and "Sort Ascending". VOILA!





## 😑 05 (Issue with Sorting)

1. Firstly, the bar charts were not sorted. We saw '<20' and then '>70'. Which is not correct.

![image](https://github.com/zizanayub/Data-Analytics-Projects/assets/65456659/91281c78-df97-4cb2-bf01-9be6740ea4e6)

2. Solution: Just select the new column you created in the "Age Groups Table" and repeat the next process. 

![image](https://github.com/zizanayub/Data-Analytics-Projects/assets/65456659/8f4d3c60-c1f0-4e81-98a6-b146cc62405f)



## ▶️ 06 (Number of Customers and Churn Rate by Account Balance and Credit Scores)

![image](https://github.com/zizanayub/Data-Analytics-Projects/assets/65456659/664ab9bd-aab2-4c5b-98af-bd0d9d03e0a0)


Follow  the same process for the sorting issue. 



## ▶️ 07 (Dropdown of Credit Status)
Make a dropdown with the values of "Credit Status". 






## ▶️ 08 (Gauge)

1. Added "Churn Rate" as main value.
   
2. There are Maximum Value, Minimum Value, and target Value to drop.





## 💡 09 (Custom Column Named Minimum Churn Rate, Maximum Churn Rate and Target Churn Rate)

1. Create these 3 columns with "Custom Column"

2. For minimum, set 0%. For maximum, set 100%. The target value should be 12%.

3. First create the columns, then rename the columns and change the data type to percentage.


![image](https://github.com/zizanayub/Data-Analytics-Projects/assets/65456659/21102c8b-ce5b-48d4-b377-0547d22f8e06)



4. Applied Steps: 
![image](https://github.com/zizanayub/Data-Analytics-Projects/assets/65456659/cef2e7d4-948c-427f-ba7d-3ad5c56f7822)






## ▶️ 10 (Gauge: Complete the Process)

![image](https://github.com/zizanayub/Data-Analytics-Projects/assets/65456659/cbf8e75d-827a-407c-bc40-27c208aa0f03)
 


- Value: Churn Rate
- Minimum Value: Minimum Churn Rate
- Maximum Value: Maximum Churn Rate
- Target Value: Target Churn Rate
