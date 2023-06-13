# 01. Data Preparation



## ▶️ Step-01 (Identifying the Headers)
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






# 02. Data Modelling

## ▶️ 01 (Extracting Age Group Column and Removing Duplicate Columns)

1. Go to the "Queries" panel > Reference.

2. Rename the current table to "Age Groups"

3. Keep "Age Groups" column and remove the rest of all.

4. Go to 'Home' > Remove Rows > Remove Duplicates.

5. ![image](https://github.com/zizanayub/Data-Analytics-Projects/assets/65456659/46f1fa73-debf-4d4a-bab2-6be23aa7acb7)









## ❓ 02 (Why We Did the first step)

1. When we saw the age groups, we were unable to sort them. '<20' was less than '40-50'. But it was going under them.

2. Additionally, the data types of the columns are in the 'Text' data types. So, they are not sortable.

3. To reduce the hassle of sorting and obstacles during visualizations, we've done this first step of extracting this specific 'Age Groups Column'. 

