# Количество исполнителей в каждом жанре

SELECT genre_name, COUNT(musician_name) 
FROM musician
JOIN genre_musician 
ON musician.musician_id = genre_musician.musician_id
JOIN genre 
ON genre_musician.genre_id = genre.genre_id
GROUP BY genre_name;


# Количество треков, вошедших в альбомы 2019–2020 годов

SELECT COUNT(track_id) 
FROM track
JOIN album 
ON track.track_id = album.album_id
WHERE album.release_year BETWEEN 2019 AND 2020;


# Средняя продолжительность треков по каждому альбому

SELECT album.album_title, TO_CHAR((AVG(track.track_length) || 'second')::interval, 'MI:SS') 
FROM track
JOIN album 
ON track.album_id = album.album_id
GROUP BY album.album_id;


# Все исполнители, которые не выпустили альбомы в 2020 году

SELECT DISTINCT musician_name 
FROM album
JOIN musician_album 
ON album.album_id = musician_album.album_id
JOIN musician 
ON musician_album.musician_id = musician.musician_id
WHERE album.release_year != 2020;


# Названия сборников, в которых присутствует конкретный исполнитель

SELECT collection_name 
FROM music_collection 
JOIN music_collection_track 
ON music_collection.collection_id = music_collection_track.collection_id
JOIN track
ON music_collection_track.track_id = track.track_id
JOIN album
ON track.album_id = album.album_id
JOIN musician_album 
ON album.album_id = musician_album.album_id
JOIN musician 
ON musician_album.musician_id = musician.musician_id
WHERE musician.musician_name LIKE 'Nautilus Pompilius';

