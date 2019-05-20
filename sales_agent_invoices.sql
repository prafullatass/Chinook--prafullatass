-- sales_agent_invoices.sql
-- Provide a query that shows the invoices associated with
-- each sales agent. The resultant table should include the Sales Agent's full name.


SELECT COUNT(i.InvoiceId) InvoicesCount, e.EmployeeId, e.FirstName + ' '+  e.LastName EmpName
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId, e.FirstName, e.LastName;