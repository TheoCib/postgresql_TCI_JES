#!/usr/bin/env bash
psql --username=reader -d shows -c "\pset pager off" -c "SELECT * FROM users LIMIT 1;"
psql --username=reader -d shows -c "INSERT INTO users(registration_date, firstname, lastname, email, password) VALUES ('2017-03-26','test','Ana','test@test.com','test');"
