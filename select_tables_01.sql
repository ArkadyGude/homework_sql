# Название и продолжительность самого длительного трека

SELECT track_title, TO_CHAR((track_length || 'second')::interval, 'MI:SS')
FROM track
WHERE track_length = (SELECT MAX(track_length) FROM track);


# Название треков, продолжительность которых не менее 3,5 минут

SELECT track_title 
FROM track
WHERE track_length >= 3.5 * 60;


# Названия сборников, вышедших в период с 2018 по 2020 год включительно

SELECT collection_name
FROM music_collection
WHERE collection_year BETWEEN 2018 AND 2020;


# Исполнители, чьё имя состоит из одного слова

SELECT musician_name
FROM musician
WHERE musician_name NOT LIKE '% %';


# Название треков, которые содержат слово «мой» или «my»

SELECT track_title
FROM track
WHERE track_title LIKE '%my%' or track_title LIKE '%мой%';

