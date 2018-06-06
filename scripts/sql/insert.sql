\pset pager off
COPY users(user_id,registration_date,firstname,lastname,email,password) FROM
	'/home/theo/Postgresql/scripts/csv/user.csv' DELIMITER ',' CSV HEADER;


COPY shows(show_id,name,description,release_year,genres,network) FROM
	'/home/theo/Postgresql/scripts/csv/show.csv' DELIMITER ',' CSV HEADER;

COPY episodes(episode_id,show_id,season,number,date) FROM
	'/home/theo/Postgresql/scripts/csv/episode.csv' DELIMITER ',' CSV HEADER;
COPY show_follow(user_id,show_id,follow_date) FROM
	'/home/theo/Postgresql/scripts/csv/user_follow_show.csv' DELIMITER ',' CSV HEADER;
COPY show_rating(user_id,show_id,rating,rating_date) FROM
	'/home/theo/Postgresql/scripts/csv/user_rate_show.csv' DELIMITER ',' CSV HEADER;
COPY episode_watch(user_id,episode_id,watch_date) FROM
	'/home/theo/Postgresql/scripts/csv/user_watch_episode.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM users LIMIT 1;
SELECT * FROM shows LIMIT 1;
SELECT * FROM episodes LIMIT 1;
SELECT * FROM show_follow LIMIT 1;
SELECT * FROM show_rating LIMIT 1;
SELECT * FROM episode_watch LIMIT 1;
