-- line_item_track.sql
-- Provide a query that includes the purchased track name with each invoice line item.

SELECT il.*, t.Name from InvoiceLine il join Track t ON il.TrackId = t.TrackId;