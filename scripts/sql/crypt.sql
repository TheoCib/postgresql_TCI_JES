\pset pager off
CREATE EXTENSION pgcrypto;
UPDATE users SET password = crypt(password, gen_salt('bf'));

SELECT * FROM users LIMIT 1;

