-- tracks_no_id.sql
-- Provide a query that shows all the Tracks,but displays no IDs.
-- The result should include the Album name, Media type and Genre.


SELECT t.Name TrackName, t.Composer, t.Milliseconds, t.UnitPrice, t.Bytes,
al.Title, m.Name MediaTypeName, g.Name GenreName
from Track t JOIN Album al on t.AlbumId = al.AlbumId
JOIN MediaType m on t.MediaTypeId = m.MediaTypeId
JOIN Genre g ON t.GenreId = g.GenreId;
