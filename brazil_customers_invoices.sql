-- brazil_customers_invoices.sql:
-- Provide a query showing the Invoices of customers who are from Brazil.
-- The resultant table should show the customer's full name, Invoice ID,
-- Date of the invoice and billing country.


Select  c.FirstName + ' ' + c.LastName FullName, i.InvoiceDate, i.BillingCountry ,
 i.InvoiceId, c.Country from Invoice i Join Customer c
On i.CustomerId = c.CustomerId
where c.Country LIKE 'Brazil';