CREATE DATABASE yoganetwork;

\c yoganetwork

CREATE TABLE studios (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR (200),
  image_url VARCHAR (500),
  suburb VARCHAR (200),
  body VARCHAR (1000)
);

SELECT * FROM studios;

INSERT INTO studios (name, image_url, suburb, style) VALUES ('Power Living', 'http://tinanded.com.au/wp-content/uploads/2013/12/tinanded-power-living-1-1024x682.jpg', 'Fitzroy, South Melbourne', '');

CREATE TABLE yogis (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR (200),
  image_url VARCHAR (500),
  suburb VARCHAR (100)
  favourite_yoga VARCHAR (500)
);


CREATE TABLE yoga_styles (
  id SERIAL4 PRIMARY KEY,
  yoga VARCHAR (200),
  level VARCHAR (100)
  mood VARCHAR (500)
);


CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  email VARCHAR(50) NOT NULL,
  password_digest VARCHAR (400) NOT NULL,
  admin BOOLEAN NOT NULL
);
