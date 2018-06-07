#!/usr/bin/env bash

#Drop de database 
psql --username=admin -c "DROP DATABASE shows;"

#On crée la database
psql --username=admin -c "CREATE DATABASE shows;"

#On execute le script sql
psql --username=admin -d shows -f sql/db_shows.sql
