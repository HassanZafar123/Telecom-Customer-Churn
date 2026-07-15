-- View table information
describe telco_customer_churn;
-- View all columns in the table
select * from telco_customer_churn;
-- Checking for null values from count column 
select * from telco_customer_churn where count is NULL;
-- Count total no of rows in the table
select count(*) from telco_customer_churn;
-- Checking for duplicate customer id
SELECT customerID, COUNT(*) FROM telco_customer_churn
GROUP BY customerID HAVING COUNT(*) > 1;
-- Checking if most customers are male or female
select count(*), gender from telco_customer_churn group by gender;
-- Checking if majority of customers is aged 65 and plus or less than this
select `senior citizen`,count(*) from telco_customer_churn group by `senior citizen`;
-- Checking which cities have majority customers
select city, count(*) as Total_customers from telco_customer_churn group by city
order by Total_customers desc;
-- Most internet service used
select `Internet Service`, count(*) as Number_users from telco_customer_churn group by `Internet Service`
order by Number_users desc;
-- Round monthly charges to 2 decimal places to make it consistent
alter table telco_customer_churn modify
column `monthly charges` double(10,2);
-- Most used payment menthods
select `payment method`,count(*) as Most_used_payment_method
from telco_customer_churn group by `payment method` order by Most_used_payment_method desc ;

