CREATE DATABASE my_catalogs;

-- Label Entity
CREATE TABLE IF NOT EXISTS labels (
  id int generated always  as identity primary key,
  title varchar(64),
  color varchar(64),
  publish_date date
);

-- Book Entity
CREATE TABLE IF NOT EXISTS books (
  id int generated always  as identity primary key,
  label_id int,
  archived boolean,
  publisher varchar(64),
  cover_status varchar(64),
  publish_date date,
  CONSTRAINT fk_label FOREIGN KEY (label_id) REFERENCES label(id)
);

CREATE INDEX books_label_index ON books (label_id);

------------ Music album table ----------------
CREATE TABLE music_albums (
  id SERIAL PRIMARY KEY,
  publish_date DATE NOT NULL DEFAULT DATE,
  on_spotify BOOLEAN,
  archived BOOLEAN,
  genre_id INT,
  label_id INT,
  author_id INT,
  CONSTRAINT fk_genre FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
  PRIMARY KEY(id)
);

------------ Genre table -------------------
CREATE TABLE genres (
  genre_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  PRIMARY KEY(genre_id)
);

------------ Game table ----------------
CREATE TABLE game(
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  multiplayer VARCHAR(255) NOT NULL,
  last_played_at DATE NOT NULL,
  FOREIGN KEY (item_id) REFERENCES item (id)
);

------------ Author table ----------------
CREATE TABLE author(
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL
);
