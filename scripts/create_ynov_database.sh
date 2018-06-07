#!/usr/bin/env bash

#De la meme maniere que la table shows, on drop, on crée et on appel notre script sql pour créer les tables + insert
psql --username=admin -c "DROP DATABASE ynov;"
psql --username=admin -c "CREATE DATABASE ynov;"
psql --username=admin -d ynov -f sql/db_ynov.sql
