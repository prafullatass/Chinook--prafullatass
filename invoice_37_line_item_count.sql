-- invoice_37_line_item_count.sql
-- Looking at the InvoiceLine table,
-- provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT il.InvoiceId, COUNT(il.InvoiceLineId) NoOfCount from InvoiceLine il
Group by il.InvoiceId having il.InvoiceId = 37;

-- other way

SELECT  COUNT(il.InvoiceLineId) NoOfCount from InvoiceLine il where il.InvoiceId =37;