#!/usr/bin/env bash

#On appel notre fonction sql
psql --username=admin -d shows -f sql/backup.sql
