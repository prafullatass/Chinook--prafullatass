-- top_3_artists.sql
-- Provide a query that shows the top 3 best selling artists.


SELECT top 3 count(il.InvoiceLineId) InvoicesCountForArtist, ar.Name
from  InvoiceLine il JOIN Track t on il.TrackId = t.TrackId
JOIN Album al on t.AlbumId = al.AlbumId
JOIN Artist ar on ar.ArtistId = al.ArtistId
group by ar.ArtistId, ar.Name
ORDER BY InvoicesCountForArtist desc

