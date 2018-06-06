#!/usr/bin/env bash
sudo -u postgres psql -c "CREATE DATABASE admin;" -c "CREATE ROLE admin LOGIN PASSWORD 'adminpassword' SUPERUSER;"
