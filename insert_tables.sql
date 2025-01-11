INSERT INTO 
genre(genre_name)
VALUES 
('Рок'),
('Диско'),
('Кантри'),
('Блюз'),
('Регги');

INSERT INTO
musician(musician_name)
VALUES
('КИНО'),
('Nautilus Pompilius'),
('Boney M'),
('Bee Gees'),
('Taylor Swift'),
('Johnny Cash'),
('Bob Marley'),
('Luciano');

INSERT INTO 
album(album_title, release_year)
VALUES 
('Группа крови', 1988),
('Звезда по имени Солнце', 1989),
('Последний герой', 1989),
('Черный альбом', 1990),
('Крылья', 1996),
('Разлука', 1986),
('Князь тишины', 1989),
('Чужая земля', 1991),
('Take the Heat Off Me', 1976),
('Daddy Cool', 1976),
('Number Ones', 2004),
('Children of the World', 1976),
('folklore', 2020),
('I Walk the Line', 2020),
('Kaya', 2001),
('No Solution EP', 2022),
('Soul Almighty - The Early Years 1967-1971', 2022);

INSERT INTO 
track(track_title, track_length, album_id)
VALUES 
('Группа крови', 235, 1),
('Звезда по имени Солнце', 225, 2),
('Перемен', 292, 3),
('Кончится лето', 354, 4),
('Пачка сигарет', 266, 2),
('Крылья', 225, 5),
('Я хочу быть с тобой', 260, 7),
('Дыхание', 219, 5),
('Прогулки по воде', 224, 8),
('Скованные одной цепью', 257, 6),
('Daddy Cool', 208, 10),
('You Should Be Dancing', 253, 11),
('seven', 208, 13),
('I Walk the Line', 154, 14),
('Kaya', 148, 15),
('No Solution', 298, 16)
('my Cup', 214, 17);

INSERT INTO 
music_collection(collection_name, collection_year)
VALUES 
('good mood', 2019),
('The best of the past', 2020),
('The magnificent present',2024)
('Russian Rock', 2018);

INSERT INTO
genre_musician(musician_id, genre_id)
VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 4),
(4, 1);

INSERT INTO
musician_album(musician_id, album_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 9),
(3, 10),
(4, 12),
(5, 13),
(6, 14),
(7, 15),
(8, 16),
(7, 17);

INSERT INTO
music_collection_track(collection_id, track_id)
VALUES
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 1),
(3, 2),
(3, 3),
(3, 4);