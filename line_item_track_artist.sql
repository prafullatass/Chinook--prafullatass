-- line_item_track_artist.sql:
-- Provide a query that includes the purchased track name
-- AND artist name with each invoice line item.


SELECT il.*, t.Name, ar.Name
FROM InvoiceLine il JOIN Track t on il.TrackId = t.TrackId
JOIN Album al ON al.AlbumId = t.AlbumId
JOIN Artist ar ON ar.ArtistId = al.ArtistId;