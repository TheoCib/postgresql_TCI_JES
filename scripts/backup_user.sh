#!/usr/bin/env bash

psql --username=admin -d shows -f sql/backup.sql
