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


