-- line_items_per_invoice.sql
-- Looking at the InvoiceLine table, provide a query that COUNTs
-- the number of line items for each Invoice. HINT: GROUP BY



SELECT il.InvoiceId, COUNT(il.InvoiceLineId) NoOfCount from InvoiceLine il
Group by il.InvoiceId;