--On fait un export de notre table users dans le dossier indiqué. On lui dit de prendre les header et de délimiter
--les entrées par une vrigule
COPY (SELECT * FROM users) TO '/home/theo/Postgresql/scripts/backup/user_bk.csv' DELIMITER ',' HEADER CSV;
