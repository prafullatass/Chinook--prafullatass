-- top_agent.sql
-- Which sales agent made the most in sales over all?


SELECT s.TotalSales, s.LastName, s.FirstName
FROM  (
SELECT sum(i.Total) TotalSales, e.FirstName, e.LastName
FROM Invoice i JOIN Customer c on c.CustomerId = i.CustomerId
Join Employee e on c.SupportRepId = e.EmployeeId
WHERE year(i.InvoiceDate) = 2009
Group by e.EmployeeId, e.FirstName, e.LastName
) as s
WHERE s.TotalSales = (
SELECT MAX(t.TotalSales) FROM  (
SELECT sum(i.Total) TotalSales
FROM Invoice i JOIN Customer c on c.CustomerId = i.CustomerId
Join Employee e on c.SupportRepId = e.EmployeeId
WHERE year(i.InvoiceDate) = 2009
Group by e.EmployeeId) as t
);


-- other way
SELECT TOP 1 sum(i.Total) TotalSales, e.FirstName, e.LastName
FROM Invoice i JOIN Customer c on c.CustomerId = i.CustomerId
Join Employee e on c.SupportRepId = e.EmployeeId
Group by e.EmployeeId, e.FirstName, e.LastName
order by TotalSales desc ;