#!/usr/bin/env bash

#On fait un check du role readonly avec l'utilisateur reader 
#On fait un select qui s'effectue avec succés
psql --username=reader -d shows -c "\pset pager off" -c "SELECT * FROM users LIMIT 1;"

#On fait un insert qui s'effectue avec une erreur, ce qui confirme que le role readonly fonctionne
psql --username=reader -d shows -c "INSERT INTO users(registration_date, firstname, lastname, email, password) VALUES ('2017-03-26','test','Ana','test@test.com','test');"
