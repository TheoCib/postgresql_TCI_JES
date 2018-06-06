COPY (SELECT * FROM users) TO '/home/theo/Postgresql/scripts/backup/user_bk.csv' DELIMITER ',' HEADER CSV;
