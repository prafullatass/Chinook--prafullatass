-- playlists_track_count.sql
-- Provide a query that shows the total number of tracks in each playlist.
-- The Playlist name should be include on the resulant table.

SELECT COUNT(TrackId) NoOfCount, p.Name
FROM PlaylistTrack pt JOIN Playlist p
ON pt.PlaylistId = p.PlaylistId
GROUP by pt.PlaylistId, p.Name;

