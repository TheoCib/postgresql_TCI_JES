#!/usr/bin/env bash

psql --username=admin -c "DROP DATABASE ynov;"
psql --username=admin -c "CREATE DATABASE ynov;"
psql --username=admin -d ynov -f sql/db_ynov.sql
