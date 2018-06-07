#!/usr/bin/env bash

#On modifie la timezone de notre BDD
psql --username=admin -c "ALTER SYSTEM SET timezone TO 'Europe/Paris';"
