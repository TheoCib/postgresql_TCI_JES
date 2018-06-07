# postgresql_TCI_JES

* create_admin_user.sh > Créer un user admin et sa BDD.  
* crypt_password.sh  > Crypter les password de la table users.  
* setup_postgres.sh > Installer postgresql.  
* backup_user.sh > Faire un export en CSV de la table users.  
* create_readonly_role.sh > Créer un role et un utilisateur ayant seulement les droits readonly.  
* check_read_only.sh > Verifie que l'user precedemment crée n'a que le droit de lecture et non d'ecriture.  
* create_show_data.sh > Crée la base de donnée shows.  
* load_show_database.sh > Peuple la BDD shows.  
* create_ynov_database.sh > Crée et peuple la BDD ynov.  
* set_configuration.sh > Configure l'heure de la BDD shows.  
* reset_show.sh > Drop et recrée entièrement la database shows
