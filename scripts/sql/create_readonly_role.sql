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
CREATE ROLE readonly;

GRANT CONNECT ON DATABASE shows TO readonly;
GRANT USAGE ON SCHEMA public TO readonly;

GRANT SELECT ON ALL TABLES IN SCHEMA public TO readonly;

ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO readonly;

CREATE ROLE reader LOGIN PASSWORD 'lis';
GRANT readonly TO reader;
