#!/usr/bin/env bash

psql --username=admin -d shows -f   sql/create_readonly_role.sql
