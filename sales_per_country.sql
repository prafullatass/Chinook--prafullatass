-- sales_per_country.sql
--  Provide a query that shows the total sales per country.

SELECT sum(Total) TotalSales, BillingCountry
from Invoice
GROUP BY BillingCountry
order by BillingCountry;