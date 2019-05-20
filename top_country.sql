-- top_country.sql
-- Which country's customers spent the most?

SELECT  TotalSales, BillingCountry
from (
SELECT sum(Total) TotalSales, BillingCountry from Invoice GROUP BY BillingCountry ) as t
WHERE TotalSales = (
SELECT max(TotalSales) from (
    SELECT sum(Total) TotalSales from Invoice GROUP BY BillingCountry
) as s);