CREATE TABLE IF NOT EXISTS Genres(
    genreID SERIAL PRIMARY KEY,
    genre_name VARCHAR(100) UNIQUE NOT NULL
    );

CREATE TABLE IF NOT EXISTS Musicians(
    musicianID SERIAL PRIMARY KEY,
    musician_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Genres-Musicians(
    musicianID INTEGER REFERENCES Musicians(musicianID)
    genreID INTEGER REFERENCES Genres(genreID)
    CONSTRAINT pkgm PRIMARY KEY (musicianID, genreID)

);

CREATE TABLE IF NOT EXISTS Albums(
    albumID SERIAL PRIMARY KEY,
    album_title VARCHAR(200) UNIQUE NOT NULL,
    year_release YEAR NOT NULL CHECK(YEAR > 1900)
);

CREATE TABLE IF NOT EXISTS Musicians-Albums(
    musicianID INTEGER REFERENCES Musicians(musicianID)
    albumID INTEGER REFERENCES Albums(albumID)
    CONSTRAINT pkma PRIMARY KEY (musicianID, albumID)
);

CREATE TABLE IF NOT EXISTS Tracks(
    trackID SERIAL PRIMARY KEY
    track_title VARCHAR(250) UNIQUE NOT NULL
    track_length INTERVAL NOT NULL CHECK(track_length > 0)
    albumID INTEGER REFERENCES Albums(albumID)
);

CREATE TABLE IF NOT EXISTS Collections(
    сollectionID SERIAL PRIMARY KEY
    сollection_name VARCHAR(250) UNIQUE NOT NULL
    year_collection YEAR NOT NULL CHECK(YEAR > 1900)
);

CREATE TABLE IF NOT EXISTS Collections-Tracks(
    сollectionID INTEGER REFERENCES Collections(collectionID)
    trackID INTEGER REFERENCES Tracks(trackID)
    CONSTRAINT pkct PRIMARY KEY(collectionID, trackID)
)



