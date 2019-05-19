-- invoice_totals.sql
-- Provide a query that shows the Invoice Total, Customer name, Country and
-- Sale Agent name for all invoices and customers.

SELECT e.FirstName + ' '+ e.LastName AgentName, i.Total, c.FirstName+ ' ' + c.LastName CustomerName,
c.Country FROM Customer c join Employee e
On c.SupportRepId = e.EmployeeId
join Invoice i on i.CustomerId = c.CustomerId;