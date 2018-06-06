#!/usr/bin/env bash

psql --username=admin -c "ALTER SYSTEM SET timezone TO 'Europe/Paris';"
