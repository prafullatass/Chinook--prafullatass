-- sales_agent_total_sales.sql
-- Provide a query that shows total sales made by each sales agent.

SELECT SUM(i.Total) TotalSales, e.FirstName, e.LastName
FROM Invoice i JOIN Customer c on c.CustomerId = i.CustomerId
Join Employee e on c.SupportRepId = e.EmployeeId
Group by e.EmployeeId, e.FirstName, e.LastName;