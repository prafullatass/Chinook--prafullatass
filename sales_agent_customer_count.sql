 -- sales_agent_customer_count.sql
 -- Provide a query that shows the count of customers assigned to each sales agent.

SELECT count (c.CustomerId) TotalCustomers, e.FirstName, e.LastName
FROM Customer c JOIN Employee e ON c.SupportRepId = e.EmployeeId
Group by e.EmployeeId, e.FirstName, e.LastName;