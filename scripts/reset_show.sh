#!/usr/bin/env bash

#On drop et crée la BDD + tables
./create_show_database.sh

#On set la timezone
./set_configuration.sh

#On populate la BDD
./load_show_data.sh

#On encrypte les password de la table user
./crypt_password.sh

#On supprime le role et le user readonly et on le recrée
./create_readonly_role.sh

#On check si ce role fonctionne bien (peut select mais pas insert)
./check_read_only.sh

#On fait un export csv de la table user
./backup_user.sh

