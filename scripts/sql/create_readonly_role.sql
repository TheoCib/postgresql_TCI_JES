-- permet de supprimer l'alter default privileges
DROP OWNED BY readonly;

-- supprime tout les privileges sur le schema public
REVOKE ALL PRIVILEGES ON SCHEMA public FROM readonly;

-- supprime tout les privileges sur les tables
REVOKE ALL ON ALL TABLES IN SCHEMA public FROM readonly;

-- supprime le droit connect à la db
REVOKE CONNECT ON DATABASE shows FROM readonly;

-- supprime les roles
REVOKE readonly FROM reader;
DROP ROLE reader;
DROP ROLE readonly;
--crée le role readonly
CREATE ROLE readonly;

--On lui donne le droit de se co sur la BDD shows
GRANT CONNECT ON DATABASE shows TO readonly;

--On lui donne le droit d'utiliser le repertoire public 
GRANT USAGE ON SCHEMA public TO readonly;

--On lui permet d'utiliser toute les tables
GRANT SELECT ON ALL TABLES IN SCHEMA public TO readonly;

--Permet d'appliquer les mêmes privilèges sur les futurs tables crées
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO readonly;

--On crée un user reader et on applique notre role readonly
CREATE ROLE reader LOGIN PASSWORD 'lis';
GRANT readonly TO reader;
