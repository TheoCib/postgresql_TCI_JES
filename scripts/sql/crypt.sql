--On désactive le pager
\pset pager off
--On lui donne l'extension pgcrypto
CREATE EXTENSION pgcrypto;
--On lui dit de crypter la colonne password de la table users
UPDATE users SET password = crypt(password, gen_salt('bf'));

--On selectionne le premier user pour check si le cryptage a fonctionné
SELECT * FROM users LIMIT 1;

