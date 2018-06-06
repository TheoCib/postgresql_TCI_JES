#!/usr/bin/env bash


psql --username=admin -c "DROP DATABASE shows;"
psql --username=admin -c "CREATE DATABASE shows;"
psql --username=admin -d shows -f sql/db_shows.sql
