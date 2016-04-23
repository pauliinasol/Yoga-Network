CREATE DATABASE yoganetwork;

\c yoganetwork

CREATE TABLE studios (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR (200),
  image_url VARCHAR (500),
  address VARCHAR (500),
  body VARCHAR (1000),
  website_url VARCHAR (500)
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

CREATE TABLE yogastyles (
  id SERIAL4 PRIMARY KEY,
  yoga_style VARCHAR(200) NOT NULL
);

CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  homestudio VARCHAR(200),
  favourite_yoga VARCHAR(400),
  password_digest VARCHAR (400) NOT NULL
);

  admin BOOLEAN NOT NULL

CREATE TABLE likes (
  id SERIAL4 PRIMARY KEY,
  user_id INTEGER,
  studio_id INTEGER
);

CREATE TABLE comments (
  id SERIAL4 PRIMARY KEY,
  body VARCHAR (800) NOT NULL,
  user_id INTEGER,
  studio_id INTEGER
);
