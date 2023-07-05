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
