#  1 What is the overall sales trend for different product categories and subcategories?

SELECT
    Years AS SalesYear,
    Month AS SalesMonth,
    Product_Category,
    Sub_category,
    SUM(revenue) AS TotalSales
FROM
    Sales
GROUP BY
	SalesYear,
    SalesMonth,
    Product_Category,
    sub_category
ORDER BY
    SalesYear,
    SalesMonth;
    
    
    SELECT
    Years AS SalesYear,
    Month AS SalesMonth,
    Product_Category,
    SUM(revenue) AS TotalSales
FROM
    Sales
GROUP BY
	SalesYear,
    SalesMonth,
    Product_Category
ORDER BY
    SalesYear,
    SalesMonth;
    
# 2 Which product category generates the highest revenue? Are there any notable variations across different regions or states?

SELECT
      sum(revenue)as total_revenue,
	  product_category ,
      country,state
    
FROM sales
group by
	  product_category ,
      country,state
      
order by 
      total_revenue desc ; 
      
# 3 How does the unit cost compare to the unit price for each product category?
SELECT
    Product_Category,
    AVG(Unit_Cost) AS AverageCost,
    AVG(Unit_Price) AS AveragePrice
FROM
    sales
GROUP BY
    Product_Category;
      
# 4  Is there a correlation between customer age and the quantity of products purchased?
	SELECT
  MIN(Age) AS youngest,
  MAX(Age) AS oldest
FROM sales;

SELECT
  CASE
    WHEN age >= 17 AND age <= 27 THEN '17-27'
    WHEN age >= 28 AND age <= 40 THEN '28-40'
    WHEN age >= 41 AND age <= 50 THEN '41-50'
    WHEN age >= 51 AND age <= 60 THEN '51-60'
    WHEN age >= 64 AND age <= 70 THEN '61-70'
    ELSE '71+'
  END AS Customer_age_group,sum(quantity_order) as total_quantity,quantity_order
  
  from sales
  
  GROUP BY
    Customer_Age_group,quantity_order;
  
# 5 What is the distribution of customer orders by region?

SELECT
    state,country,
    COUNT(quantity_order) AS OrderCount
FROM
    sales
GROUP BY
    state,country
order by 
    ordercount desc;

#  6 Which products category have shown a significant increase or decrease in sales compared to the previous year?

select product_category , years  , count(quantity_order) as count
from sales
group by years,product_category 
order by product_category ;

# 7 What is the revenue distribution across different product categories?
select sum(revenue)as total_revenue , product_category
from sales
group by  product_category 
order by total_revenue desc;

select sum(revenue)as total_revenue , sub_category
from sales
group by  sub_category 
order by total_revenue desc






