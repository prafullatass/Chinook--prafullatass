-- top_5_tracks.sql
-- Provide a query that shows the top 5 most purchased songs.

select top 5 count(il.InvoiceLineId) TrackCount, t.Name
from InvoiceLine il JOIN Track t on il.TrackId = t.TrackId
group by il.TrackId, t.Name
ORDER BY TrackCount DESC