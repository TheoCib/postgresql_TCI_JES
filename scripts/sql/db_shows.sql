--Table users
CREATE TABLE users (
user_id serial PRIMARY KEY,
registration_date DATE NOT NULL CHECK (registration_date < NOW()),
firstname VARCHAR (50) NOT NULL,
lastname VARCHAR (50) NOT NULL,
email VARCHAR (355) UNIQUE NOT NULL CHECK (email LIKE '%@%'),
password VARCHAR (255) NOT NULL
);

--Table shows
CREATE TABLE shows (
show_id serial PRIMARY KEY,
name TEXT NOT NULL,
description TEXT,
release_year integer NOT NULL,
genres VARCHAR (100),
network VARCHAR (50)
);

--Tables episodes
CREATE TABLE episodes (
episode_id serial PRIMARY KEY,
show_id integer REFERENCES shows(show_id),
season integer NOT NULL,
number integer NOT NULL,
date DATE 
);

--Table jointure show_follow
CREATE TABLE show_follow(
user_id integer REFERENCES users(user_id),
show_id integer REFERENCES shows(show_id),
follow_date DATE NOT NULL
);

--Table jointure episode_watch
CREATE TABLE episode_watch(
user_id integer REFERENCES users(user_id),
episode_id integer REFERENCES episodes(episode_id),
watch_date DATE NOT NULL
);

--Table jointure show_rating
CREATE TABLE show_rating(
user_id integer REFERENCES users(user_id),
show_id integer REFERENCES shows(show_id),
rating integer NOT NULL,
rating_date DATE NOT NULL
);
