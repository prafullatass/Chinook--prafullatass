 -- sales_agents.sql:
  --  Provide a query showing only the Employees who are Sales Agents.


SELECT * FROM Employee WHERE Title LIKE 'Sales % Agent';