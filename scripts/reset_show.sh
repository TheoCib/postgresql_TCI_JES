#!/usr/bin/env bash

./create_show_database.sh
./set_configuration.sh
./load_show_data.sh
./crypt_password.sh
./create_readonly_role.sh
./check_read_only.sh
./backup_user.sh

