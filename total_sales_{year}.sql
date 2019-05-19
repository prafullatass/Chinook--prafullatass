-- total_sales_{year}.sql
-- What are the respective total sales for each of those years?

SELECT sum(i.Total) TotalAmount, year(i.InvoiceDate) Year from Invoice i
GROUP BY year(i.InvoiceDate);
