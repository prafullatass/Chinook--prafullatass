-- top_2013_track.sql
-- Provide a query that shows the most purchased track of 2013.


--- not sure because all have count 1
SELECT count(i.InvoiceId), t.TrackId
FROM Invoice i join InvoiceLine il ON i.InvoiceId = il.InvoiceId
join Track t ON t.TrackId = il.TrackId
WHERE year(i.InvoiceDate) = 2013
GROUP BY t.TrackId
order by t.TrackId;

