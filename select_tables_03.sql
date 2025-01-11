# Названия альбомов, в которых присутствуют исполнители более чем одного жанра

SELECT album_title 
FROM album 
JOIN musician_album ON album.album_id = musician_album.album_id
JOIN musician ON musician_album.musician_id = musician.musician_id
JOIN genre_musician ON musician.musician_id = genre_musician.musician_id
GROUP BY musician.musician_name, album.album_title
HAVING COUNT(genre_musician.genre_id) > 1;


# Наименования треков, которые не входят в сборники

SELECT track_title
FROM track
LEFT JOIN music_collection_track ON track.track_id = music_collection_track.track_id
WHERE music_collection_track.track_id IS NULL;


# Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько

SELECT musician.musician_name, TO_CHAR((track.track_length || 'second')::interval, 'MI:SS') 
FROM musician 
JOIN musician_album ON musician.musician_id = musician_album.musician_id
JOIN album ON musician_album.album_id = album.album_id
JOIN track ON album.album_id = track.album_id
WHERE track.track_length IN (SELECT MIN(track_length) FROM track)


# Названия альбомов, содержащих наименьшее количество треков

SELECT album.album_title, COUNT(track.track_id)
FROM album
JOIN track ON album.album_id = track.album_id
GROUP BY album.album_title
HAVING COUNT(track.track_id) IN (
    SELECT COUNT(track.track_id)
    FROM album
    JOIN track ON album.album_id = track.album_id
    GROUP BY album.album_title
    ORDER BY COUNT(track.track_id)
    LIMIT 1
);
