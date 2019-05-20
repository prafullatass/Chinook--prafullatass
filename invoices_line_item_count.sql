-- invoices_line_item_count.sql
-- Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT COUNT(il.InvoiceLineId) InvoiceLineCount , i.InvoiceId
FROM Invoice i
JOIN InvoiceLine il ON  i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId
ORDER BY InvoiceLineCount DESC
