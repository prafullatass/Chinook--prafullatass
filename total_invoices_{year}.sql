-- total_invoices_{year}.sql
--  How many Invoices were there in 2009 and 2011?

SELECT Count(i.InvoiceId) TotalInvoices, year(i.InvoiceDate) Year from Invoice i
GROUP BY year(i.InvoiceDate) Having year(i.InvoiceDate) = 2009 OR year(i.InvoiceDate) = 2011;