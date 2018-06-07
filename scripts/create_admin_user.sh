#!/usr/bin/env bash

#On crée un utilisateur admin en superuser et on lui crée sa BDD
sudo -u postgres psql -c "CREATE DATABASE admin;" -c "CREATE ROLE admin LOGIN PASSWORD 'adminpassword' SUPERUSER;"
