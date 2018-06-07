#!/usr/bin/env bash

#On appel notre script sql
psql --username=admin -d shows -f   sql/create_readonly_role.sql
