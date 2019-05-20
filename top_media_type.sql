-- top_media_type.sql
-- Provide a query that shows the most purchased Media Type.

SELECT top 1 COUNT(il.InvoiceLineId) MediaTYpeCount, m.MediaTypeId, m.Name FROM InvoiceLine il JOIN Track t on il.TrackId = t.TrackId
join MediaType m on m.MediaTypeId = t.MediaTypeId
GROUP BY m.MediaTypeId, m.Name
order by MediaTYpeCount DESC;

