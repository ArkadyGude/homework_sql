# Жанры

CREATE TABLE IF NOT EXISTS genre(
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(100) UNIQUE NOT NULL
    );


# Исполнители

CREATE TABLE IF NOT EXISTS musician(
    musician_id SERIAL PRIMARY KEY,
    musician_name VARCHAR(100) UNIQUE NOT NULL
);


# Жанры и испорлнители

CREATE TABLE IF NOT EXISTS genre_musician(
    musician_id INTEGER REFERENCES musician(musician_id),
    genre_id INTEGER REFERENCES genre(genre_id),
    CONSTRAINT pkgm PRIMARY KEY (musician_id, genre_id)
);


# Альбомы

CREATE TABLE IF NOT EXISTS album(
    album_id SERIAL PRIMARY KEY,
    album_title VARCHAR(200) UNIQUE NOT NULL,
    release_year INTEGER NOT NULL CHECK(release_year > 1900)
);

# Альбомы и исполнители

CREATE TABLE IF NOT EXISTS musician_album(
    musician_id INTEGER REFERENCES musician(musician_id),
    album_id INTEGER REFERENCES album(album_id),
    CONSTRAINT pkma PRIMARY KEY (musician_id, album_id)
);


# Песни

CREATE TABLE IF NOT EXISTS track(
    track_id SERIAL PRIMARY KEY,
    track_title VARCHAR(250) UNIQUE NOT NULL,
    track_length INTEGER NOT NULL CHECK(track_length > 0),
    album_id INTEGER REFERENCES album(album_id)
);


# Сборники

CREATE TABLE IF NOT EXISTS music_collection(
    сollection_id SERIAL PRIMARY KEY,
    collection_name VARCHAR(250) UNIQUE NOT NULL,
    collection_year INTEGER NOT NULL CHECK(collection_year > 1900),
);


# Сборники и песни

CREATE TABLE IF NOT EXISTS music_collection_track(
    сollection_id INTEGER REFERENCES music_collection(collection_id),
    track_id INTEGER REFERENCES track(track_id),
    CONSTRAINT pkct PRIMARY KEY(collection_id, track_id)
);



