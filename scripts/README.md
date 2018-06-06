# postgresql_TCI_JES

create_admin_user.sh > Créer un user admin et sa BDD.\n
crypt_password.sh  > Crypter les password de la table users.\n
setup_postgres.sh > Installer postgresql.\n
backup_user.sh > Faire un export en CSV de la table users.\n
create_readonly_role.sh > Créer un role et un utilisateur ayant seulement les droits readonly.\n
check_read_only.sh > Verifie que l'user precedemment crée n'a que le droit de lecture et non d'ecriture.\n
create_show_data.sh > Crée la base de donnée shows.\n
load_show_database.sh > Peuple la BDD shows.\n
create_ynov_database.sh > Crée et peuple la BDD ynov.\n
set_configuration.sh > Configure l'heure de la BDD shows.\n

