# plsql-window-functions-Flavien-MBISHIBISHI
Coffee Shop Case Study

 Problem Definition
Business Context: A small coffee shop chain wants to better understand its customers and sales performance.  
Data Challenge: The shop needs to identify top customers, track sales trends, and segment customers for marketing campaigns.  
Expected Outcome: Use PL/SQL window functions to generate insights into sales performance, customer segmentation, and growth trends.

---

 Database Schema
- customers: Stores customer details (id, name, region).  
- products: Stores product catalog (id, name, category).  
- transactions: Sales records (id, customer_id, product_id, date, amount).  

 Relationships:
- One customer → many transactions.  
- One product → many transactions.  
- Transactions link customers and products.  


 Queries used
1. Ranking Customers: Identify top spenders using RANK, ROW_NUMBER, DENSE_RANK, and PERCENT_RANK.  
2. Running Totals and Trends: Calculate running total, average, min, and max using SUM, AVG, MIN, MAX with frames.  
3. Month-over-Month Growth: Measure growth using LAG and LEAD for period-to-period comparison.  
4. Customer Segmentation: Group customers into quartiles with NTILE and measure distribution with CUME_DIST.  
5. 3-Month Moving Average: Smooth out sales fluctuations with a rolling window using AVG.  


 Insights
- Descriptive: Top spenders are mostly from Kigali; sales peak around April and May.  
- Diagnostic: High sales align with product launches and promotions. Lower months show reduced transactions.  
- Prescriptive: Marketing should focus on Kigali customers and repeat promotions during peak months. Introducing loyalty rewards could increase retention.  


 References
1. Oracle Database SQL Language Reference  
2. Oracle LiveSQL documentation  
3. GeeksforGeeks – Window Functions in SQL  
4. Mode Analytics SQL Tutorial   
5. DataCamp SQL Window Functions Guide  
6. Tutorialspoint PL/SQL Guide  
7. Towards Data Science – SQL Analytics with Window Functions  
8. Oracle Community Forums  
     

All sources were properly cited. Implementations and analysis represent original work. No AI generated content was copied without attribution or adaptation.
